.class public final Lᴵﹳ/ٴﹳ;
.super Lcom/google/crypto/tink/shaded/protobuf/ـˆ;
.source "SourceFile"


# static fields
.field private static final DEFAULT_INSTANCE:Lᴵﹳ/ٴﹳ;

.field public static final KEY_URI_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/ˊˋ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/\u02ca\u02cb;"
        }
    .end annotation
.end field


# instance fields
.field private keyUri_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lᴵﹳ/ٴﹳ;

    invoke-direct {v0}, Lᴵﹳ/ٴﹳ;-><init>()V

    sput-object v0, Lᴵﹳ/ٴﹳ;->DEFAULT_INSTANCE:Lᴵﹳ/ٴﹳ;

    const-class v1, Lᴵﹳ/ٴﹳ;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->ـˆ(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/ـˆ;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lᴵﹳ/ٴﹳ;->keyUri_:Ljava/lang/String;

    return-void
.end method

.method public static ʽʽ()Lᴵﹳ/ˑʼ;
    .locals 1

    sget-object v0, Lᴵﹳ/ٴﹳ;->DEFAULT_INSTANCE:Lᴵﹳ/ٴﹳ;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->ʼˎ()Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;

    move-result-object v0

    check-cast v0, Lᴵﹳ/ˑʼ;

    return-object v0
.end method

.method public static ʾˋ()Lᴵﹳ/ٴﹳ;
    .locals 1

    sget-object v0, Lᴵﹳ/ٴﹳ;->DEFAULT_INSTANCE:Lᴵﹳ/ٴﹳ;

    return-object v0
.end method

.method public static ˈٴ(Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;)Lᴵﹳ/ٴﹳ;
    .locals 1

    sget-object v0, Lᴵﹳ/ٴﹳ;->DEFAULT_INSTANCE:Lᴵﹳ/ٴﹳ;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->ˏי(Lcom/google/crypto/tink/shaded/protobuf/ـˆ;Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;)Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    move-result-object p0

    check-cast p0, Lᴵﹳ/ٴﹳ;

    return-object p0
.end method

.method public static ᵢˏ(Lᴵﹳ/ٴﹳ;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lᴵﹳ/ٴﹳ;->keyUri_:Ljava/lang/String;

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
    sget-object p1, Lᴵﹳ/ٴﹳ;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/ˊˋ;

    if-nez p1, :cond_1

    const-class v0, Lᴵﹳ/ٴﹳ;

    monitor-enter v0

    :try_start_0
    sget-object p1, Lᴵﹳ/ٴﹳ;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/ˊˋ;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/ʻٴ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lᴵﹳ/ٴﹳ;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/ˊˋ;

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
    sget-object p1, Lᴵﹳ/ٴﹳ;->DEFAULT_INSTANCE:Lᴵﹳ/ٴﹳ;

    return-object p1

    :pswitch_2
    new-instance p1, Lᴵﹳ/ˑʼ;

    sget-object v0, Lᴵﹳ/ٴﹳ;->DEFAULT_INSTANCE:Lᴵﹳ/ٴﹳ;

    invoke-direct {p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;-><init>(Lcom/google/crypto/tink/shaded/protobuf/ـˆ;)V

    return-object p1

    :pswitch_3
    new-instance p1, Lᴵﹳ/ٴﹳ;

    invoke-direct {p1}, Lᴵﹳ/ٴﹳ;-><init>()V

    return-object p1

    :pswitch_4
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "keyUri_"

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const-string v0, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0208"

    sget-object v1, Lᴵﹳ/ٴﹳ;->DEFAULT_INSTANCE:Lᴵﹳ/ٴﹳ;

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

.method public final ᴵˊ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lᴵﹳ/ٴﹳ;->keyUri_:Ljava/lang/String;

    return-object v0
.end method
