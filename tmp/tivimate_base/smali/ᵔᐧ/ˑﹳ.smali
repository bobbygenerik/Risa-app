.class public abstract Lᵔᐧ/ˑﹳ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ⁱˊ:Ljava/util/Map;

.field public static final ﹳٴ:[Lᵔᐧ/ⁱˊ;


# direct methods
.method static constructor <clinit>()V
    .locals 64

    .prologue
    new-instance v0, Lᵔᐧ/ⁱˊ;

    sget-object v1, Lᵔᐧ/ⁱˊ;->ʼˎ:Lˊᐧ/ʼˎ;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lᵔᐧ/ⁱˊ;-><init>(Lˊᐧ/ʼˎ;Ljava/lang/String;)V

    new-instance v1, Lᵔᐧ/ⁱˊ;

    sget-object v3, Lᵔᐧ/ⁱˊ;->ﾞᴵ:Lˊᐧ/ʼˎ;

    const-string v4, "GET"

    invoke-direct {v1, v3, v4}, Lᵔᐧ/ⁱˊ;-><init>(Lˊᐧ/ʼˎ;Ljava/lang/String;)V

    new-instance v4, Lᵔᐧ/ⁱˊ;

    const-string v5, "POST"

    invoke-direct {v4, v3, v5}, Lᵔᐧ/ⁱˊ;-><init>(Lˊᐧ/ʼˎ;Ljava/lang/String;)V

    new-instance v3, Lᵔᐧ/ⁱˊ;

    sget-object v5, Lᵔᐧ/ⁱˊ;->ᵎﹶ:Lˊᐧ/ʼˎ;

    const-string v6, "/"

    invoke-direct {v3, v5, v6}, Lᵔᐧ/ⁱˊ;-><init>(Lˊᐧ/ʼˎ;Ljava/lang/String;)V

    new-instance v6, Lᵔᐧ/ⁱˊ;

    const-string v7, "/index.html"

    invoke-direct {v6, v5, v7}, Lᵔᐧ/ⁱˊ;-><init>(Lˊᐧ/ʼˎ;Ljava/lang/String;)V

    new-instance v5, Lᵔᐧ/ⁱˊ;

    sget-object v7, Lᵔᐧ/ⁱˊ;->ᵔᵢ:Lˊᐧ/ʼˎ;

    const-string v8, "http"

    invoke-direct {v5, v7, v8}, Lᵔᐧ/ⁱˊ;-><init>(Lˊᐧ/ʼˎ;Ljava/lang/String;)V

    new-instance v8, Lᵔᐧ/ⁱˊ;

    const-string v9, "https"

    invoke-direct {v8, v7, v9}, Lᵔᐧ/ⁱˊ;-><init>(Lˊᐧ/ʼˎ;Ljava/lang/String;)V

    new-instance v7, Lᵔᐧ/ⁱˊ;

    sget-object v9, Lᵔᐧ/ⁱˊ;->ˑﹳ:Lˊᐧ/ʼˎ;

    const-string v10, "200"

    invoke-direct {v7, v9, v10}, Lᵔᐧ/ⁱˊ;-><init>(Lˊᐧ/ʼˎ;Ljava/lang/String;)V

    new-instance v10, Lᵔᐧ/ⁱˊ;

    const-string v11, "204"

    invoke-direct {v10, v9, v11}, Lᵔᐧ/ⁱˊ;-><init>(Lˊᐧ/ʼˎ;Ljava/lang/String;)V

    new-instance v11, Lᵔᐧ/ⁱˊ;

    const-string v12, "206"

    invoke-direct {v11, v9, v12}, Lᵔᐧ/ⁱˊ;-><init>(Lˊᐧ/ʼˎ;Ljava/lang/String;)V

    new-instance v12, Lᵔᐧ/ⁱˊ;

    const-string v13, "304"

    invoke-direct {v12, v9, v13}, Lᵔᐧ/ⁱˊ;-><init>(Lˊᐧ/ʼˎ;Ljava/lang/String;)V

    new-instance v13, Lᵔᐧ/ⁱˊ;

    const-string v14, "400"

    invoke-direct {v13, v9, v14}, Lᵔᐧ/ⁱˊ;-><init>(Lˊᐧ/ʼˎ;Ljava/lang/String;)V

    new-instance v14, Lᵔᐧ/ⁱˊ;

    const-string v15, "404"

    invoke-direct {v14, v9, v15}, Lᵔᐧ/ⁱˊ;-><init>(Lˊᐧ/ʼˎ;Ljava/lang/String;)V

    new-instance v15, Lᵔᐧ/ⁱˊ;

    move-object/from16 v16, v0

    const-string v0, "500"

    invoke-direct {v15, v9, v0}, Lᵔᐧ/ⁱˊ;-><init>(Lˊᐧ/ʼˎ;Ljava/lang/String;)V

    new-instance v0, Lᵔᐧ/ⁱˊ;

    const-string v9, "accept-charset"

    invoke-direct {v0, v9, v2}, Lᵔᐧ/ⁱˊ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lᵔᐧ/ⁱˊ;

    move-object/from16 v17, v0

    const-string v0, "accept-encoding"

    move-object/from16 v18, v1

    const-string v1, "gzip, deflate"

    invoke-direct {v9, v0, v1}, Lᵔᐧ/ⁱˊ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lᵔᐧ/ⁱˊ;

    const-string v1, "accept-language"

    invoke-direct {v0, v1, v2}, Lᵔᐧ/ⁱˊ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lᵔᐧ/ⁱˊ;

    move-object/from16 v19, v0

    const-string v0, "accept-ranges"

    invoke-direct {v1, v0, v2}, Lᵔᐧ/ⁱˊ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lᵔᐧ/ⁱˊ;

    move-object/from16 v20, v1

    const-string v1, "accept"

    invoke-direct {v0, v1, v2}, Lᵔᐧ/ⁱˊ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lᵔᐧ/ⁱˊ;

    move-object/from16 v21, v0

    const-string v0, "access-control-allow-origin"

    invoke-direct {v1, v0, v2}, Lᵔᐧ/ⁱˊ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lᵔᐧ/ⁱˊ;

    move-object/from16 v22, v1

    const-string v1, "age"

    invoke-direct {v0, v1, v2}, Lᵔᐧ/ⁱˊ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lᵔᐧ/ⁱˊ;

    move-object/from16 v23, v0

    const-string v0, "allow"

    invoke-direct {v1, v0, v2}, Lᵔᐧ/ⁱˊ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lᵔᐧ/ⁱˊ;

    move-object/from16 v24, v1

    const-string v1, "authorization"

    invoke-direct {v0, v1, v2}, Lᵔᐧ/ⁱˊ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lᵔᐧ/ⁱˊ;

    move-object/from16 v25, v0

    const-string v0, "cache-control"

    invoke-direct {v1, v0, v2}, Lᵔᐧ/ⁱˊ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lᵔᐧ/ⁱˊ;

    move-object/from16 v26, v1

    const-string v1, "content-disposition"

    invoke-direct {v0, v1, v2}, Lᵔᐧ/ⁱˊ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lᵔᐧ/ⁱˊ;

    move-object/from16 v27, v0

    const-string v0, "content-encoding"

    invoke-direct {v1, v0, v2}, Lᵔᐧ/ⁱˊ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lᵔᐧ/ⁱˊ;

    move-object/from16 v28, v1

    const-string v1, "content-language"

    invoke-direct {v0, v1, v2}, Lᵔᐧ/ⁱˊ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lᵔᐧ/ⁱˊ;

    move-object/from16 v29, v0

    const-string v0, "content-length"

    invoke-direct {v1, v0, v2}, Lᵔᐧ/ⁱˊ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lᵔᐧ/ⁱˊ;

    move-object/from16 v30, v1

    const-string v1, "content-location"

    invoke-direct {v0, v1, v2}, Lᵔᐧ/ⁱˊ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lᵔᐧ/ⁱˊ;

    move-object/from16 v31, v0

    const-string v0, "content-range"

    invoke-direct {v1, v0, v2}, Lᵔᐧ/ⁱˊ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lᵔᐧ/ⁱˊ;

    move-object/from16 v32, v1

    const-string v1, "content-type"

    invoke-direct {v0, v1, v2}, Lᵔᐧ/ⁱˊ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lᵔᐧ/ⁱˊ;

    move-object/from16 v33, v0

    const-string v0, "cookie"

    invoke-direct {v1, v0, v2}, Lᵔᐧ/ⁱˊ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lᵔᐧ/ⁱˊ;

    move-object/from16 v34, v1

    const-string v1, "date"

    invoke-direct {v0, v1, v2}, Lᵔᐧ/ⁱˊ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lᵔᐧ/ⁱˊ;

    move-object/from16 v35, v0

    const-string v0, "etag"

    invoke-direct {v1, v0, v2}, Lᵔᐧ/ⁱˊ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lᵔᐧ/ⁱˊ;

    move-object/from16 v36, v1

    const-string v1, "expect"

    invoke-direct {v0, v1, v2}, Lᵔᐧ/ⁱˊ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lᵔᐧ/ⁱˊ;

    move-object/from16 v37, v0

    const-string v0, "expires"

    invoke-direct {v1, v0, v2}, Lᵔᐧ/ⁱˊ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lᵔᐧ/ⁱˊ;

    move-object/from16 v38, v1

    const-string v1, "from"

    invoke-direct {v0, v1, v2}, Lᵔᐧ/ⁱˊ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lᵔᐧ/ⁱˊ;

    move-object/from16 v39, v0

    const-string v0, "host"

    invoke-direct {v1, v0, v2}, Lᵔᐧ/ⁱˊ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lᵔᐧ/ⁱˊ;

    move-object/from16 v40, v1

    const-string v1, "if-match"

    invoke-direct {v0, v1, v2}, Lᵔᐧ/ⁱˊ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lᵔᐧ/ⁱˊ;

    move-object/from16 v41, v0

    const-string v0, "if-modified-since"

    invoke-direct {v1, v0, v2}, Lᵔᐧ/ⁱˊ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lᵔᐧ/ⁱˊ;

    move-object/from16 v42, v1

    const-string v1, "if-none-match"

    invoke-direct {v0, v1, v2}, Lᵔᐧ/ⁱˊ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lᵔᐧ/ⁱˊ;

    move-object/from16 v43, v0

    const-string v0, "if-range"

    invoke-direct {v1, v0, v2}, Lᵔᐧ/ⁱˊ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lᵔᐧ/ⁱˊ;

    move-object/from16 v44, v1

    const-string v1, "if-unmodified-since"

    invoke-direct {v0, v1, v2}, Lᵔᐧ/ⁱˊ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lᵔᐧ/ⁱˊ;

    move-object/from16 v45, v0

    const-string v0, "last-modified"

    invoke-direct {v1, v0, v2}, Lᵔᐧ/ⁱˊ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lᵔᐧ/ⁱˊ;

    move-object/from16 v46, v1

    const-string v1, "link"

    invoke-direct {v0, v1, v2}, Lᵔᐧ/ⁱˊ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lᵔᐧ/ⁱˊ;

    move-object/from16 v47, v0

    const-string v0, "location"

    invoke-direct {v1, v0, v2}, Lᵔᐧ/ⁱˊ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lᵔᐧ/ⁱˊ;

    move-object/from16 v48, v1

    const-string v1, "max-forwards"

    invoke-direct {v0, v1, v2}, Lᵔᐧ/ⁱˊ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lᵔᐧ/ⁱˊ;

    move-object/from16 v49, v0

    const-string v0, "proxy-authenticate"

    invoke-direct {v1, v0, v2}, Lᵔᐧ/ⁱˊ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lᵔᐧ/ⁱˊ;

    move-object/from16 v50, v1

    const-string v1, "proxy-authorization"

    invoke-direct {v0, v1, v2}, Lᵔᐧ/ⁱˊ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lᵔᐧ/ⁱˊ;

    move-object/from16 v51, v0

    const-string v0, "range"

    invoke-direct {v1, v0, v2}, Lᵔᐧ/ⁱˊ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lᵔᐧ/ⁱˊ;

    move-object/from16 v52, v1

    const-string v1, "referer"

    invoke-direct {v0, v1, v2}, Lᵔᐧ/ⁱˊ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lᵔᐧ/ⁱˊ;

    move-object/from16 v53, v0

    const-string v0, "refresh"

    invoke-direct {v1, v0, v2}, Lᵔᐧ/ⁱˊ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lᵔᐧ/ⁱˊ;

    move-object/from16 v54, v1

    const-string v1, "retry-after"

    invoke-direct {v0, v1, v2}, Lᵔᐧ/ⁱˊ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lᵔᐧ/ⁱˊ;

    move-object/from16 v55, v0

    const-string v0, "server"

    invoke-direct {v1, v0, v2}, Lᵔᐧ/ⁱˊ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lᵔᐧ/ⁱˊ;

    move-object/from16 v56, v1

    const-string v1, "set-cookie"

    invoke-direct {v0, v1, v2}, Lᵔᐧ/ⁱˊ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lᵔᐧ/ⁱˊ;

    move-object/from16 v57, v0

    const-string v0, "strict-transport-security"

    invoke-direct {v1, v0, v2}, Lᵔᐧ/ⁱˊ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lᵔᐧ/ⁱˊ;

    move-object/from16 v58, v1

    const-string v1, "transfer-encoding"

    invoke-direct {v0, v1, v2}, Lᵔᐧ/ⁱˊ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lᵔᐧ/ⁱˊ;

    move-object/from16 v59, v0

    const-string v0, "user-agent"

    invoke-direct {v1, v0, v2}, Lᵔᐧ/ⁱˊ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lᵔᐧ/ⁱˊ;

    move-object/from16 v60, v1

    const-string v1, "vary"

    invoke-direct {v0, v1, v2}, Lᵔᐧ/ⁱˊ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lᵔᐧ/ⁱˊ;

    move-object/from16 v61, v0

    const-string v0, "via"

    invoke-direct {v1, v0, v2}, Lᵔᐧ/ⁱˊ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lᵔᐧ/ⁱˊ;

    move-object/from16 v62, v1

    const-string v1, "www-authenticate"

    invoke-direct {v0, v1, v2}, Lᵔᐧ/ⁱˊ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x3d

    new-array v2, v1, [Lᵔᐧ/ⁱˊ;

    const/16 v63, 0x0

    aput-object v16, v2, v63

    const/16 v16, 0x1

    aput-object v18, v2, v16

    const/16 v16, 0x2

    aput-object v4, v2, v16

    const/4 v4, 0x3

    aput-object v3, v2, v4

    const/4 v3, 0x4

    aput-object v6, v2, v3

    const/4 v3, 0x5

    aput-object v5, v2, v3

    const/4 v3, 0x6

    aput-object v8, v2, v3

    const/4 v3, 0x7

    aput-object v7, v2, v3

    const/16 v3, 0x8

    aput-object v10, v2, v3

    const/16 v3, 0x9

    aput-object v11, v2, v3

    const/16 v3, 0xa

    aput-object v12, v2, v3

    const/16 v3, 0xb

    aput-object v13, v2, v3

    const/16 v3, 0xc

    aput-object v14, v2, v3

    const/16 v3, 0xd

    aput-object v15, v2, v3

    const/16 v3, 0xe

    aput-object v17, v2, v3

    const/16 v3, 0xf

    aput-object v9, v2, v3

    const/16 v3, 0x10

    aput-object v19, v2, v3

    const/16 v3, 0x11

    aput-object v20, v2, v3

    const/16 v3, 0x12

    aput-object v21, v2, v3

    const/16 v3, 0x13

    aput-object v22, v2, v3

    const/16 v3, 0x14

    aput-object v23, v2, v3

    const/16 v3, 0x15

    aput-object v24, v2, v3

    const/16 v3, 0x16

    aput-object v25, v2, v3

    const/16 v3, 0x17

    aput-object v26, v2, v3

    const/16 v3, 0x18

    aput-object v27, v2, v3

    const/16 v3, 0x19

    aput-object v28, v2, v3

    const/16 v3, 0x1a

    aput-object v29, v2, v3

    const/16 v3, 0x1b

    aput-object v30, v2, v3

    const/16 v3, 0x1c

    aput-object v31, v2, v3

    const/16 v3, 0x1d

    aput-object v32, v2, v3

    const/16 v3, 0x1e

    aput-object v33, v2, v3

    const/16 v3, 0x1f

    aput-object v34, v2, v3

    const/16 v3, 0x20

    aput-object v35, v2, v3

    const/16 v3, 0x21

    aput-object v36, v2, v3

    const/16 v3, 0x22

    aput-object v37, v2, v3

    const/16 v3, 0x23

    aput-object v38, v2, v3

    const/16 v3, 0x24

    aput-object v39, v2, v3

    const/16 v3, 0x25

    aput-object v40, v2, v3

    const/16 v3, 0x26

    aput-object v41, v2, v3

    const/16 v3, 0x27

    aput-object v42, v2, v3

    const/16 v3, 0x28

    aput-object v43, v2, v3

    const/16 v3, 0x29

    aput-object v44, v2, v3

    const/16 v3, 0x2a

    aput-object v45, v2, v3

    const/16 v3, 0x2b

    aput-object v46, v2, v3

    const/16 v3, 0x2c

    aput-object v47, v2, v3

    const/16 v3, 0x2d

    aput-object v48, v2, v3

    const/16 v3, 0x2e

    aput-object v49, v2, v3

    const/16 v3, 0x2f

    aput-object v50, v2, v3

    const/16 v3, 0x30

    aput-object v51, v2, v3

    const/16 v3, 0x31

    aput-object v52, v2, v3

    const/16 v3, 0x32

    aput-object v53, v2, v3

    const/16 v3, 0x33

    aput-object v54, v2, v3

    const/16 v3, 0x34

    aput-object v55, v2, v3

    const/16 v3, 0x35

    aput-object v56, v2, v3

    const/16 v3, 0x36

    aput-object v57, v2, v3

    const/16 v3, 0x37

    aput-object v58, v2, v3

    const/16 v3, 0x38

    aput-object v59, v2, v3

    const/16 v3, 0x39

    aput-object v60, v2, v3

    const/16 v3, 0x3a

    aput-object v61, v2, v3

    const/16 v3, 0x3b

    aput-object v62, v2, v3

    const/16 v3, 0x3c

    aput-object v0, v2, v3

    sput-object v2, Lᵔᐧ/ˑﹳ;->ﹳٴ:[Lᵔᐧ/ⁱˊ;

    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v3}, Ljava/util/LinkedHashMap;-><init>(IF)V

    move/from16 v3, v63

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v2, v3

    iget-object v4, v4, Lᵔᐧ/ⁱˊ;->ﹳٴ:Lˊᐧ/ʼˎ;

    invoke-virtual {v0, v4}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    aget-object v4, v2, v3

    iget-object v4, v4, Lᵔᐧ/ⁱˊ;->ﹳٴ:Lˊᐧ/ʼˎ;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lᵔᐧ/ˑﹳ;->ⁱˊ:Ljava/util/Map;

    return-void
.end method

.method public static ﹳٴ(Lˊᐧ/ʼˎ;)V
    .locals 4

    .prologue
    invoke-virtual {p0}, Lˊᐧ/ʼˎ;->ʽ()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lˊᐧ/ʼˎ;->ᵔᵢ(I)B

    move-result v2

    const/16 v3, 0x41

    if-gt v3, v2, :cond_1

    const/16 v3, 0x5b

    if-lt v2, v3, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Lˊᐧ/ʼˎ;->ʼᐧ()Ljava/lang/String;

    move-result-object p0

    const-string v1, "PROTOCOL_ERROR response malformed: mixed case name: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
