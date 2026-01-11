.class public final Lᴵﹳ/ﹶᐧ;
.super Lcom/google/crypto/tink/shaded/protobuf/ـˆ;
.source "SourceFile"


# static fields
.field private static final DEFAULT_INSTANCE:Lᴵﹳ/ﹶᐧ;

.field public static final KEY_INFO_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/ˊˋ; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/\u02ca\u02cb;"
        }
    .end annotation
.end field

.field public static final PRIMARY_KEY_ID_FIELD_NUMBER:I = 0x1


# instance fields
.field private keyInfo_:Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/\u1d62\u02cf;"
        }
    .end annotation
.end field

.field private primaryKeyId_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lᴵﹳ/ﹶᐧ;

    invoke-direct {v0}, Lᴵﹳ/ﹶᐧ;-><init>()V

    sput-object v0, Lᴵﹳ/ﹶᐧ;->DEFAULT_INSTANCE:Lᴵﹳ/ﹶᐧ;

    const-class v1, Lᴵﹳ/ﹶᐧ;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->ـˆ(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/ـˆ;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;-><init>()V

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ـˏ;->ˈٴ:Lcom/google/crypto/tink/shaded/protobuf/ـˏ;

    iput-object v0, p0, Lᴵﹳ/ﹶᐧ;->keyInfo_:Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;

    return-void
.end method

.method public static ʾˋ(Lᴵﹳ/ﹶᐧ;Lᴵﹳ/ˈˏ;)V
    .locals 2

    .prologue
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lᴵﹳ/ﹶᐧ;->keyInfo_:Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;

    move-object v1, v0

    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/ⁱˊ;

    iget-boolean v1, v1, Lcom/google/crypto/tink/shaded/protobuf/ⁱˊ;->ʾˋ:Z

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v1, 0x2

    :goto_0
    invoke-interface {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;->ˉˆ(I)Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;

    move-result-object v0

    iput-object v0, p0, Lᴵﹳ/ﹶᐧ;->keyInfo_:Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;

    :cond_1
    iget-object p0, p0, Lᴵﹳ/ﹶᐧ;->keyInfo_:Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static ᴵˊ()Lᴵﹳ/ˊᵔ;
    .locals 1

    sget-object v0, Lᴵﹳ/ﹶᐧ;->DEFAULT_INSTANCE:Lᴵﹳ/ﹶᐧ;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->ʼˎ()Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;

    move-result-object v0

    check-cast v0, Lᴵﹳ/ˊᵔ;

    return-object v0
.end method

.method public static ᵢˏ(Lᴵﹳ/ﹶᐧ;I)V
    .locals 0

    iput p1, p0, Lᴵﹳ/ﹶᐧ;->primaryKeyId_:I

    return-void
.end method


# virtual methods
.method public final ˆʾ(I)Ljava/lang/Object;
    .locals 3

    .prologue
    invoke-static {p1}, Lʻٴ/ᵎﹶ;->ˈ(I)I

    move-result p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    sget-object p1, Lᴵﹳ/ﹶᐧ;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/ˊˋ;

    if-nez p1, :cond_1

    const-class v0, Lᴵﹳ/ﹶᐧ;

    monitor-enter v0

    :try_start_0
    sget-object p1, Lᴵﹳ/ﹶᐧ;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/ˊˋ;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/ʻٴ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lᴵﹳ/ﹶᐧ;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/ˊˋ;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object p1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    return-object p1

    :pswitch_1
    sget-object p1, Lᴵﹳ/ﹶᐧ;->DEFAULT_INSTANCE:Lᴵﹳ/ﹶᐧ;

    return-object p1

    :pswitch_2
    new-instance p1, Lᴵﹳ/ˊᵔ;

    sget-object v0, Lᴵﹳ/ﹶᐧ;->DEFAULT_INSTANCE:Lᴵﹳ/ﹶᐧ;

    invoke-direct {p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;-><init>(Lcom/google/crypto/tink/shaded/protobuf/ـˆ;)V

    return-object p1

    :pswitch_3
    new-instance p1, Lᴵﹳ/ﹶᐧ;

    invoke-direct {p1}, Lᴵﹳ/ﹶᐧ;-><init>()V

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const-string v1, "primaryKeyId_"

    const/4 v2, 0x0

    aput-object v1, p1, v2

    const-string v1, "keyInfo_"

    aput-object v1, p1, v0

    const-class v0, Lᴵﹳ/ˈˏ;

    const/4 v1, 0x2

    aput-object v0, p1, v1

    const-string v0, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b"

    sget-object v1, Lᴵﹳ/ﹶᐧ;->DEFAULT_INSTANCE:Lᴵﹳ/ﹶᐧ;

    new-instance v2, Lcom/google/crypto/tink/shaded/protobuf/ﹳـ;

    invoke-direct {v2, v1, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/ﹳـ;-><init>(Lcom/google/crypto/tink/shaded/protobuf/ﹳٴ;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :pswitch_5
    const/4 p1, 0x0

    return-object p1

    :pswitch_6
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
