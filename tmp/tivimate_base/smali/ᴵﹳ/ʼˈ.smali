.class public final Lᴵﹳ/ʼˈ;
.super Lcom/google/crypto/tink/shaded/protobuf/ـˆ;
.source "SourceFile"


# static fields
.field private static final DEFAULT_INSTANCE:Lᴵﹳ/ʼˈ;

.field public static final KEY_SIZE_FIELD_NUMBER:I = 0x2

.field public static final PARAMS_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/ˊˋ; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/\u02ca\u02cb;"
        }
    .end annotation
.end field

.field public static final VERSION_FIELD_NUMBER:I = 0x3


# instance fields
.field private bitField0_:I

.field private keySize_:I

.field private params_:Lᴵﹳ/ﹳـ;

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lᴵﹳ/ʼˈ;

    invoke-direct {v0}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;-><init>()V

    sput-object v0, Lᴵﹳ/ʼˈ;->DEFAULT_INSTANCE:Lᴵﹳ/ʼˈ;

    const-class v1, Lᴵﹳ/ʼˈ;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->ـˆ(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/ـˆ;)V

    return-void
.end method

.method public static ʾˋ(Lᴵﹳ/ʼˈ;I)V
    .locals 0

    iput p1, p0, Lᴵﹳ/ʼˈ;->keySize_:I

    return-void
.end method

.method public static ˊʻ()Lᴵﹳ/ˊˋ;
    .locals 1

    sget-object v0, Lᴵﹳ/ʼˈ;->DEFAULT_INSTANCE:Lᴵﹳ/ʼˈ;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->ʼˎ()Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;

    move-result-object v0

    check-cast v0, Lᴵﹳ/ˊˋ;

    return-object v0
.end method

.method public static ٴᵢ(Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;)Lᴵﹳ/ʼˈ;
    .locals 1

    sget-object v0, Lᴵﹳ/ʼˈ;->DEFAULT_INSTANCE:Lᴵﹳ/ʼˈ;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->ˏי(Lcom/google/crypto/tink/shaded/protobuf/ـˆ;Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;)Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    move-result-object p0

    check-cast p0, Lᴵﹳ/ʼˈ;

    return-object p0
.end method

.method public static ᴵˊ()Lᴵﹳ/ʼˈ;
    .locals 1

    sget-object v0, Lᴵﹳ/ʼˈ;->DEFAULT_INSTANCE:Lᴵﹳ/ʼˈ;

    return-object v0
.end method

.method public static ᵢˏ(Lᴵﹳ/ʼˈ;Lᴵﹳ/ﹳـ;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lᴵﹳ/ʼˈ;->params_:Lᴵﹳ/ﹳـ;

    iget p1, p0, Lᴵﹳ/ʼˈ;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lᴵﹳ/ʼˈ;->bitField0_:I

    return-void
.end method


# virtual methods
.method public final ʽʽ()I
    .locals 1

    iget v0, p0, Lᴵﹳ/ʼˈ;->keySize_:I

    return v0
.end method

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
    sget-object p1, Lᴵﹳ/ʼˈ;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/ˊˋ;

    if-nez p1, :cond_1

    const-class v0, Lᴵﹳ/ʼˈ;

    monitor-enter v0

    :try_start_0
    sget-object p1, Lᴵﹳ/ʼˈ;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/ˊˋ;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/ʻٴ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lᴵﹳ/ʼˈ;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/ˊˋ;

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
    sget-object p1, Lᴵﹳ/ʼˈ;->DEFAULT_INSTANCE:Lᴵﹳ/ʼˈ;

    return-object p1

    :pswitch_2
    new-instance p1, Lᴵﹳ/ˊˋ;

    sget-object v0, Lᴵﹳ/ʼˈ;->DEFAULT_INSTANCE:Lᴵﹳ/ʼˈ;

    invoke-direct {p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;-><init>(Lcom/google/crypto/tink/shaded/protobuf/ـˆ;)V

    return-object p1

    :pswitch_3
    new-instance p1, Lᴵﹳ/ʼˈ;

    invoke-direct {p1}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;-><init>()V

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const-string v1, "bitField0_"

    const/4 v2, 0x0

    aput-object v1, p1, v2

    const-string v1, "params_"

    aput-object v1, p1, v0

    const-string v0, "keySize_"

    const/4 v1, 0x2

    aput-object v0, p1, v1

    const-string v0, "version_"

    const/4 v1, 0x3

    aput-object v0, p1, v1

    const-string v0, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u000b\u0003\u000b"

    sget-object v1, Lᴵﹳ/ʼˈ;->DEFAULT_INSTANCE:Lᴵﹳ/ʼˈ;

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

.method public final ˈٴ()Lᴵﹳ/ﹳـ;
    .locals 1

    .prologue
    iget-object v0, p0, Lᴵﹳ/ʼˈ;->params_:Lᴵﹳ/ﹳـ;

    if-nez v0, :cond_0

    invoke-static {}, Lᴵﹳ/ﹳـ;->ᴵˊ()Lᴵﹳ/ﹳـ;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final ᴵᵔ()I
    .locals 1

    iget v0, p0, Lᴵﹳ/ʼˈ;->version_:I

    return v0
.end method
