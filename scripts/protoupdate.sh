protoc -I=internal/pkg/pb --go_out=internal/pkg/pb internal/pkg/pb/chain.proto
mv internal/pkg/pb/github.com/rumsystem/quorum/internal/pkg/pb/chain.pb.go internal/pkg/pb/chain.pb.go
sed -i 's/TimeStamp,omitempty/TimeStamp,omitempty,string/g' internal/pkg/pb/chain.pb.go
