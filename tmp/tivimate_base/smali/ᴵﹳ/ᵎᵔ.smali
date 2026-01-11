.class public final Lᴵﹳ/ᵎᵔ;
.super Lcom/google/crypto/tink/shaded/protobuf/ـˆ;
.source "SourceFile"


# static fields
.field private static final DEFAULT_INSTANCE:Lᴵﹳ/ᵎᵔ;

.field public static final OUTPUT_PREFIX_TYPE_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/ˊˋ; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/\u02ca\u02cb;"
        }
    .end annotation
.end field

.field public static final TYPE_URL_FIELD_NUMBER:I = 0x1

.field public static final VALUE_FIELD_NUMBER:I = 0x2


# instance fields
.field private outputPrefixType_:I

.field private typeUrl_:Ljava/lang/String;

.field private value_:Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lᴵﹳ/ᵎᵔ;

    invoke-direct {v0}, Lᴵﹳ/ᵎᵔ;-><init>()V

    sput-object v0, Lᴵﹳ/ᵎᵔ;->DEFAULT_INSTANCE:Lᴵﹳ/ᵎᵔ;

    const-class v1, Lᴵﹳ/ᵎᵔ;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->ـˆ(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/ـˆ;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lᴵﹳ/ᵎᵔ;->typeUrl_:Ljava/lang/String;

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;

    iput-object v0, p0, Lᴵﹳ/ᵎᵔ;->value_:Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    return-void
.end method

.method public static ʽʽ()Lᴵﹳ/ᵎᵔ;
    .locals 1

    sget-object v0, Lᴵﹳ/ᵎᵔ;->DEFAULT_INSTANCE:Lᴵﹳ/ᵎᵔ;

    return-object v0
.end method

.method public static ʾˋ(Lᴵﹳ/ᵎᵔ;Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lᴵﹳ/ᵎᵔ;->value_:Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    return-void
.end method

.method public static ˉٴ(Lᴵﹳ/ᵎᵔ;)Lᴵﹳ/ʿᵢ;
    .locals 1

    sget-object v0, Lᴵﹳ/ᵎᵔ;->DEFAULT_INSTANCE:Lᴵﹳ/ᵎᵔ;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->ʼˎ()Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᵔᵢ(Lcom/google/crypto/tink/shaded/protobuf/ـˆ;)V

    check-cast v0, Lᴵﹳ/ʿᵢ;

    return-object v0
.end method

.method public static ٴᵢ()Lᴵﹳ/ʿᵢ;
    .locals 1

    sget-object v0, Lᴵﹳ/ᵎᵔ;->DEFAULT_INSTANCE:Lᴵﹳ/ᵎᵔ;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->ʼˎ()Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;

    move-result-object v0

    check-cast v0, Lᴵﹳ/ʿᵢ;

    return-object v0
.end method

.method public static ᴵˊ(Lᴵﹳ/ᵎᵔ;Lᴵﹳ/י;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lᴵﹳ/י;->ⁱˊ()I

    move-result p1

    iput p1, p0, Lᴵﹳ/ᵎᵔ;->outputPrefixType_:I

    return-void
.end method

.method public static ᵎⁱ([BLcom/google/crypto/tink/shaded/protobuf/ˉˆ;)Lᴵﹳ/ᵎᵔ;
    .locals 1

    sget-object v0, Lᴵﹳ/ᵎᵔ;->DEFAULT_INSTANCE:Lᴵﹳ/ᵎᵔ;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->ʽﹳ(Lcom/google/crypto/tink/shaded/protobuf/ـˆ;[BLcom/google/crypto/tink/shaded/protobuf/ˉˆ;)Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    move-result-object p0

    check-cast p0, Lᴵﹳ/ᵎᵔ;

    return-object p0
.end method

.method public static ᵢˏ(Lᴵﹳ/ᵎᵔ;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lᴵﹳ/ᵎᵔ;->typeUrl_:Ljava/lang/String;

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
    sget-object p1, Lᴵﹳ/ᵎᵔ;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/ˊˋ;

    if-nez p1, :cond_1

    const-class v0, Lᴵﹳ/ᵎᵔ;

    monitor-enter v0

    :try_start_0
    sget-object p1, Lᴵﹳ/ᵎᵔ;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/ˊˋ;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/ʻٴ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lᴵﹳ/ᵎᵔ;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/ˊˋ;

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
    sget-object p1, Lᴵﹳ/ᵎᵔ;->DEFAULT_INSTANCE:Lᴵﹳ/ᵎᵔ;

    return-object p1

    :pswitch_2
    new-instance p1, Lᴵﹳ/ʿᵢ;

    sget-object v0, Lᴵﹳ/ᵎᵔ;->DEFAULT_INSTANCE:Lᴵﹳ/ᵎᵔ;

    invoke-direct {p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;-><init>(Lcom/google/crypto/tink/shaded/protobuf/ـˆ;)V

    return-object p1

    :pswitch_3
    new-instance p1, Lᴵﹳ/ᵎᵔ;

    invoke-direct {p1}, Lᴵﹳ/ᵎᵔ;-><init>()V

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const-string v1, "typeUrl_"

    const/4 v2, 0x0

    aput-object v1, p1, v2

    const-string v1, "value_"

    aput-object v1, p1, v0

    const-string v0, "outputPrefixType_"

    const/4 v1, 0x2

    aput-object v0, p1, v1

    const-string v0, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\n\u0003\u000c"

    sget-object v1, Lᴵﹳ/ᵎᵔ;->DEFAULT_INSTANCE:Lᴵﹳ/ᵎᵔ;

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

.method public final ˈٴ()Lᴵﹳ/י;
    .locals 1

    .prologue
    iget v0, p0, Lᴵﹳ/ᵎᵔ;->outputPrefixType_:I

    invoke-static {v0}, Lᴵﹳ/י;->ﹳٴ(I)Lᴵﹳ/י;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lᴵﹳ/י;->ˉٴ:Lᴵﹳ/י;

    :cond_0
    return-object v0
.end method

.method public final ˊʻ()Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;
    .locals 1

    iget-object v0, p0, Lᴵﹳ/ᵎᵔ;->value_:Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    return-object v0
.end method

.method public final ᴵᵔ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lᴵﹳ/ᵎᵔ;->typeUrl_:Ljava/lang/String;

    return-object v0
.end method
