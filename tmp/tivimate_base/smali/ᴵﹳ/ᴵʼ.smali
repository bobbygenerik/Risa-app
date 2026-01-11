.class public final Lᴵﹳ/ᴵʼ;
.super Lcom/google/crypto/tink/shaded/protobuf/ـˆ;
.source "SourceFile"


# static fields
.field private static final DEFAULT_INSTANCE:Lᴵﹳ/ᴵʼ;

.field public static final KEY_DATA_FIELD_NUMBER:I = 0x1

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


# instance fields
.field private bitField0_:I

.field private keyData_:Lᴵﹳ/ˉـ;

.field private keyId_:I

.field private outputPrefixType_:I

.field private status_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lᴵﹳ/ᴵʼ;

    invoke-direct {v0}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;-><init>()V

    sput-object v0, Lᴵﹳ/ᴵʼ;->DEFAULT_INSTANCE:Lᴵﹳ/ᴵʼ;

    const-class v1, Lᴵﹳ/ᴵʼ;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->ـˆ(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/ـˆ;)V

    return-void
.end method

.method public static ʽʽ(Lᴵﹳ/ᴵʼ;I)V
    .locals 0

    iput p1, p0, Lᴵﹳ/ᴵʼ;->keyId_:I

    return-void
.end method

.method public static ʾˋ(Lᴵﹳ/ᴵʼ;Lᴵﹳ/י;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lᴵﹳ/י;->ⁱˊ()I

    move-result p1

    iput p1, p0, Lᴵﹳ/ᴵʼ;->outputPrefixType_:I

    return-void
.end method

.method public static ᴵˊ(Lᴵﹳ/ᴵʼ;Lᴵﹳ/ʿ;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lᴵﹳ/ʿ;->ﹳٴ()I

    move-result p1

    iput p1, p0, Lᴵﹳ/ᴵʼ;->status_:I

    return-void
.end method

.method public static ᵎⁱ()Lᴵﹳ/ˏᵢ;
    .locals 1

    sget-object v0, Lᴵﹳ/ᴵʼ;->DEFAULT_INSTANCE:Lᴵﹳ/ᴵʼ;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->ʼˎ()Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;

    move-result-object v0

    check-cast v0, Lᴵﹳ/ˏᵢ;

    return-object v0
.end method

.method public static ᵢˏ(Lᴵﹳ/ᴵʼ;Lᴵﹳ/ˉـ;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lᴵﹳ/ᴵʼ;->keyData_:Lᴵﹳ/ˉـ;

    iget p1, p0, Lᴵﹳ/ᴵʼ;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lᴵﹳ/ᴵʼ;->bitField0_:I

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
    sget-object p1, Lᴵﹳ/ᴵʼ;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/ˊˋ;

    if-nez p1, :cond_1

    const-class v0, Lᴵﹳ/ᴵʼ;

    monitor-enter v0

    :try_start_0
    sget-object p1, Lᴵﹳ/ᴵʼ;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/ˊˋ;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/ʻٴ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lᴵﹳ/ᴵʼ;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/ˊˋ;

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
    sget-object p1, Lᴵﹳ/ᴵʼ;->DEFAULT_INSTANCE:Lᴵﹳ/ᴵʼ;

    return-object p1

    :pswitch_2
    new-instance p1, Lᴵﹳ/ˏᵢ;

    sget-object v0, Lᴵﹳ/ᴵʼ;->DEFAULT_INSTANCE:Lᴵﹳ/ᴵʼ;

    invoke-direct {p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;-><init>(Lcom/google/crypto/tink/shaded/protobuf/ـˆ;)V

    return-object p1

    :pswitch_3
    new-instance p1, Lᴵﹳ/ᴵʼ;

    invoke-direct {p1}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;-><init>()V

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const-string v1, "bitField0_"

    const/4 v2, 0x0

    aput-object v1, p1, v2

    const-string v1, "keyData_"

    aput-object v1, p1, v0

    const-string v0, "status_"

    const/4 v1, 0x2

    aput-object v0, p1, v1

    const-string v0, "keyId_"

    const/4 v1, 0x3

    aput-object v0, p1, v1

    const-string v0, "outputPrefixType_"

    const/4 v1, 0x4

    aput-object v0, p1, v1

    const-string v0, "\u0000\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u000c\u0003\u000b\u0004\u000c"

    sget-object v1, Lᴵﹳ/ᴵʼ;->DEFAULT_INSTANCE:Lᴵﹳ/ᴵʼ;

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

.method public final ˈٴ()Lᴵﹳ/ˉـ;
    .locals 1

    .prologue
    iget-object v0, p0, Lᴵﹳ/ᴵʼ;->keyData_:Lᴵﹳ/ˉـ;

    if-nez v0, :cond_0

    invoke-static {}, Lᴵﹳ/ˉـ;->ʽʽ()Lᴵﹳ/ˉـ;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final ˉٴ()Z
    .locals 2

    .prologue
    iget v0, p0, Lᴵﹳ/ᴵʼ;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ˊʻ()Lᴵﹳ/י;
    .locals 1

    .prologue
    iget v0, p0, Lᴵﹳ/ᴵʼ;->outputPrefixType_:I

    invoke-static {v0}, Lᴵﹳ/י;->ﹳٴ(I)Lᴵﹳ/י;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lᴵﹳ/י;->ˉٴ:Lᴵﹳ/י;

    :cond_0
    return-object v0
.end method

.method public final ٴᵢ()Lᴵﹳ/ʿ;
    .locals 2

    .prologue
    iget v0, p0, Lᴵﹳ/ᴵʼ;->status_:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lᴵﹳ/ʿ;->ᴵᵔ:Lᴵﹳ/ʿ;

    goto :goto_0

    :cond_1
    sget-object v0, Lᴵﹳ/ʿ;->ˈٴ:Lᴵﹳ/ʿ;

    goto :goto_0

    :cond_2
    sget-object v0, Lᴵﹳ/ʿ;->ʽʽ:Lᴵﹳ/ʿ;

    goto :goto_0

    :cond_3
    sget-object v0, Lᴵﹳ/ʿ;->ᴵˊ:Lᴵﹳ/ʿ;

    :goto_0
    if-nez v0, :cond_4

    sget-object v0, Lᴵﹳ/ʿ;->ˊʻ:Lᴵﹳ/ʿ;

    :cond_4
    return-object v0
.end method

.method public final ᴵᵔ()I
    .locals 1

    iget v0, p0, Lᴵﹳ/ᴵʼ;->keyId_:I

    return v0
.end method
