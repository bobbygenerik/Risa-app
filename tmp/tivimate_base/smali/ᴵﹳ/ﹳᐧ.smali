.class public final Lᴵﹳ/ﹳᐧ;
.super Lcom/google/crypto/tink/shaded/protobuf/ـˆ;
.source "SourceFile"


# static fields
.field private static final DEFAULT_INSTANCE:Lᴵﹳ/ﹳᐧ;

.field public static final KEY_VALUE_FIELD_NUMBER:I = 0x3

.field public static final PARAMS_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/ˊˋ; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/\u02ca\u02cb;"
        }
    .end annotation
.end field

.field public static final VERSION_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private keyValue_:Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

.field private params_:Lᴵﹳ/ʻٴ;

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lᴵﹳ/ﹳᐧ;

    invoke-direct {v0}, Lᴵﹳ/ﹳᐧ;-><init>()V

    sput-object v0, Lᴵﹳ/ﹳᐧ;->DEFAULT_INSTANCE:Lᴵﹳ/ﹳᐧ;

    const-class v1, Lᴵﹳ/ﹳᐧ;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->ـˆ(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/ـˆ;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;-><init>()V

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;

    iput-object v0, p0, Lᴵﹳ/ﹳᐧ;->keyValue_:Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    return-void
.end method

.method public static ʾˋ(Lᴵﹳ/ﹳᐧ;Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lᴵﹳ/ﹳᐧ;->keyValue_:Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    return-void
.end method

.method public static ˊʻ(Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;)Lᴵﹳ/ﹳᐧ;
    .locals 1

    sget-object v0, Lᴵﹳ/ﹳᐧ;->DEFAULT_INSTANCE:Lᴵﹳ/ﹳᐧ;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->ˏי(Lcom/google/crypto/tink/shaded/protobuf/ـˆ;Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;)Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    move-result-object p0

    check-cast p0, Lᴵﹳ/ﹳᐧ;

    return-object p0
.end method

.method public static ٴᵢ()Lcom/google/crypto/tink/shaded/protobuf/ˊˋ;
    .locals 1

    sget-object v0, Lᴵﹳ/ﹳᐧ;->DEFAULT_INSTANCE:Lᴵﹳ/ﹳᐧ;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->ˉʿ()Lcom/google/crypto/tink/shaded/protobuf/ˊˋ;

    move-result-object v0

    return-object v0
.end method

.method public static ᴵᵔ()Lᴵﹳ/ᵔﹳ;
    .locals 1

    sget-object v0, Lᴵﹳ/ﹳᐧ;->DEFAULT_INSTANCE:Lᴵﹳ/ﹳᐧ;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->ʼˎ()Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;

    move-result-object v0

    check-cast v0, Lᴵﹳ/ᵔﹳ;

    return-object v0
.end method

.method public static ᵢˏ(Lᴵﹳ/ﹳᐧ;Lᴵﹳ/ʻٴ;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lᴵﹳ/ﹳᐧ;->params_:Lᴵﹳ/ʻٴ;

    iget p1, p0, Lᴵﹳ/ﹳᐧ;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lᴵﹳ/ﹳᐧ;->bitField0_:I

    return-void
.end method


# virtual methods
.method public final ʽʽ()Lᴵﹳ/ʻٴ;
    .locals 1

    .prologue
    iget-object v0, p0, Lᴵﹳ/ﹳᐧ;->params_:Lᴵﹳ/ʻٴ;

    if-nez v0, :cond_0

    invoke-static {}, Lᴵﹳ/ʻٴ;->ʾˋ()Lᴵﹳ/ʻٴ;

    move-result-object v0

    :cond_0
    return-object v0
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
    sget-object p1, Lᴵﹳ/ﹳᐧ;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/ˊˋ;

    if-nez p1, :cond_1

    const-class v0, Lᴵﹳ/ﹳᐧ;

    monitor-enter v0

    :try_start_0
    sget-object p1, Lᴵﹳ/ﹳᐧ;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/ˊˋ;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/ʻٴ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lᴵﹳ/ﹳᐧ;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/ˊˋ;

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
    sget-object p1, Lᴵﹳ/ﹳᐧ;->DEFAULT_INSTANCE:Lᴵﹳ/ﹳᐧ;

    return-object p1

    :pswitch_2
    new-instance p1, Lᴵﹳ/ᵔﹳ;

    sget-object v0, Lᴵﹳ/ﹳᐧ;->DEFAULT_INSTANCE:Lᴵﹳ/ﹳᐧ;

    invoke-direct {p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;-><init>(Lcom/google/crypto/tink/shaded/protobuf/ـˆ;)V

    return-object p1

    :pswitch_3
    new-instance p1, Lᴵﹳ/ﹳᐧ;

    invoke-direct {p1}, Lᴵﹳ/ﹳᐧ;-><init>()V

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const-string v1, "bitField0_"

    const/4 v2, 0x0

    aput-object v1, p1, v2

    const-string v1, "version_"

    aput-object v1, p1, v0

    const-string v0, "params_"

    const/4 v1, 0x2

    aput-object v0, p1, v1

    const-string v0, "keyValue_"

    const/4 v1, 0x3

    aput-object v0, p1, v1

    const-string v0, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\u1009\u0000\u0003\n"

    sget-object v1, Lᴵﹳ/ﹳᐧ;->DEFAULT_INSTANCE:Lᴵﹳ/ﹳᐧ;

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

.method public final ˈٴ()I
    .locals 1

    iget v0, p0, Lᴵﹳ/ﹳᐧ;->version_:I

    return v0
.end method

.method public final ᴵˊ()Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;
    .locals 1

    iget-object v0, p0, Lᴵﹳ/ﹳᐧ;->keyValue_:Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    return-object v0
.end method
