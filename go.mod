module github.com/maria-soozar/chproxy

go 1.17

require (
	github.com/DataDog/zstd v1.5.0
	github.com/YandexClassifieds/go-common/log v0.0.0-20220303145431-e4029c7aaa2b
	github.com/alicebob/miniredis/v2 v2.16.0
	github.com/go-redis/redis/v8 v8.11.4
	github.com/mohae/deepcopy v0.0.0-20170929034955-c48cc78d4826
	github.com/pierrec/lz4 v2.4.0+incompatible
	github.com/prometheus/client_golang v1.9.0
	golang.org/x/crypto v0.0.0-20210817164053-32db794688a5
	gopkg.in/yaml.v2 v2.4.0
)

require (
	github.com/YandexClassifieds/go-common/conf v0.0.0-20211213074447-94859acbcbba // indirect
	github.com/alicebob/gopher-json v0.0.0-20200520072559-a9ecdc9d1d3a // indirect
	github.com/beorn7/perks v1.0.1 // indirect
	github.com/cespare/xxhash/v2 v2.1.2 // indirect
	github.com/dgryski/go-rendezvous v0.0.0-20200823014737-9f7001d12a5f // indirect
	github.com/frankban/quicktest v1.7.2 // indirect
	github.com/getsentry/sentry-go v0.9.0 // indirect
	github.com/golang/protobuf v1.5.2 // indirect
	github.com/matttproud/golang_protobuf_extensions v1.0.1 // indirect
	github.com/prometheus/client_model v0.2.0 // indirect
	github.com/prometheus/common v0.15.0 // indirect
	github.com/prometheus/procfs v0.2.0 // indirect
	github.com/sirupsen/logrus v1.7.0 // indirect
	github.com/yuin/gopher-lua v0.0.0-20200816102855-ee81675732da // indirect
	golang.org/x/net v0.0.0-20210503060351-7fd8e65b6420 // indirect
	golang.org/x/sys v0.0.0-20210823070655-63515b42dcdf // indirect
	golang.org/x/text v0.3.6 // indirect
	google.golang.org/protobuf v1.27.1 // indirect
)

replace github.com/Vertamedia/chproxy => github.com/maria-soozar/chproxy v1.14.0
