.class public final Lᴵﹳ/ˈˏ;
.super Lcom/google/crypto/tink/shaded/protobuf/ـˆ;
.source "SourceFile"


# static fields
.field private static final DEFAULT_INSTANCE:Lᴵﹳ/ˈˏ;

.field public static final KEY_ID_FIELD_NUMBER:I = 0x3

.field public static final OUTPUT_PREFIX_TYPE_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/ˊˋ; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/\u02ca\u02cb;"
        }
    .end annotation
.end field

.field public static final STATUS_FIELD_NUMBER:I = 0x2

.field public static final TYPE_URL_FIELD_NUMBER:I = 0x1


# instance fields
.field private keyId_:I

.field private outputPrefixType_:I

.field private status_:I

.field private typeUrl_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lᴵﹳ/ˈˏ;

    invoke-direct {v0}, Lᴵﹳ/ˈˏ;-><init>()V

    sput-object v0, Lᴵﹳ/ˈˏ;->DEFAULT_INSTANCE:Lᴵﹳ/ˈˏ;

    const-class v1, Lᴵﹳ/ˈˏ;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->ـˆ(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/ـˆ;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lᴵﹳ/ˈˏ;->typeUrl_:Ljava/lang/String;

    return-void
.end method

.method public static ʽʽ(Lᴵﹳ/ˈˏ;I)V
    .locals 0

    iput p1, p0, Lᴵﹳ/ˈˏ;->keyId_:I

    return-void
.end method

.method public static ʾˋ(Lᴵﹳ/ˈˏ;Lᴵﹳ/י;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lᴵﹳ/י;->ⁱˊ()I

    move-result p1

    iput p1, p0, Lᴵﹳ/ˈˏ;->outputPrefixType_:I

    return-void
.end method

.method public static ˈٴ()Lᴵﹳ/ـﹶ;
    .locals 1

    sget-object v0, Lᴵﹳ/ˈˏ;->DEFAULT_INSTANCE:Lᴵﹳ/ˈˏ;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->ʼˎ()Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;

    move-result-object v0

    check-cast v0, Lᴵﹳ/ـﹶ;

    return-object v0
.end method

.method public static ᴵˊ(Lᴵﹳ/ˈˏ;Lᴵﹳ/ʿ;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lᴵﹳ/ʿ;->ﹳٴ()I

    move-result p1

    iput p1, p0, Lᴵﹳ/ˈˏ;->status_:I

    return-void
.end method

.method public static ᵢˏ(Lᴵﹳ/ˈˏ;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lᴵﹳ/ˈˏ;->typeUrl_:Ljava/lang/String;

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
    sget-object p1, Lᴵﹳ/ˈˏ;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/ˊˋ;

    if-nez p1, :cond_1

    const-class v0, Lᴵﹳ/ˈˏ;

    monitor-enter v0

    :try_start_0
    sget-object p1, Lᴵﹳ/ˈˏ;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/ˊˋ;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/ʻٴ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lᴵﹳ/ˈˏ;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/ˊˋ;

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
    sget-object p1, Lᴵﹳ/ˈˏ;->DEFAULT_INSTANCE:Lᴵﹳ/ˈˏ;

    return-object p1

    :pswitch_2
    new-instance p1, Lᴵﹳ/ـﹶ;

    sget-object v0, Lᴵﹳ/ˈˏ;->DEFAULT_INSTANCE:Lᴵﹳ/ˈˏ;

    invoke-direct {p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;-><init>(Lcom/google/crypto/tink/shaded/protobuf/ـˆ;)V

    return-object p1

    :pswitch_3
    new-instance p1, Lᴵﹳ/ˈˏ;

    invoke-direct {p1}, Lᴵﹳ/ˈˏ;-><init>()V

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const-string v1, "typeUrl_"

    const/4 v2, 0x0

    aput-object v1, p1, v2

    const-string v1, "status_"

    aput-object v1, p1, v0

    const-string v0, "keyId_"

    const/4 v1, 0x2

    aput-object v0, p1, v1

    const-string v0, "outputPrefixType_"

    const/4 v1, 0x3

    aput-object v0, p1, v1

    const-string v0, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0208\u0002\u000c\u0003\u000b\u0004\u000c"

    sget-object v1, Lᴵﹳ/ˈˏ;->DEFAULT_INSTANCE:Lᴵﹳ/ˈˏ;

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
