(defn of-alist [kvps]
  (def result (table/new (length kvps)))
  (each [k v] kvps (set (result k) v))
  result)

(defn read-packages [filename]
  (->> filename
       (slurp)
       (string/trim)
       (string/split "\n")
       (map |(string/split " " $))
       (of-alist)))

(def red "\e[31m")
(def green "\e[32m")
(def yellow "\e[33m")
(def normal "\e[0m")

(defn main [_ old-filename new-filename]
  (def to-uninstall @[])
  (def to-install @[])
  (def to-upgrade @[])

  (def old-packages (read-packages old-filename))
  (def new-packages (read-packages new-filename))

  (eachp package old-packages
    (def [name old-version] package)
    (def new-version (new-packages name))
    (case new-version
      nil (array/push to-uninstall package)
      old-version nil
      (array/push to-upgrade [name old-version new-version])))

  (eachp package new-packages
    (def [name new-version] package)
    (when (nil? (old-packages name))
      (array/push to-install package)))

  (each [name version] to-uninstall
    (print red "- " name " " version normal))
  (each [name version] to-install
    (print green "+ " name " " version normal))
  (each [name old-version new-version] to-upgrade
    (print yellow "! " name " " old-version " -> " green new-version normal)))
