.class public final Lᴵﹳ/ʾˊ;
.super Lcom/google/crypto/tink/shaded/protobuf/ـˆ;
.source "SourceFile"


# static fields
.field public static final CONFIG_NAME_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lᴵﹳ/ʾˊ;

.field public static final ENTRY_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/ˊˋ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/\u02ca\u02cb;"
        }
    .end annotation
.end field


# instance fields
.field private configName_:Ljava/lang/String;

.field private entry_:Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/\u1d62\u02cf;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lᴵﹳ/ʾˊ;

    invoke-direct {v0}, Lᴵﹳ/ʾˊ;-><init>()V

    sput-object v0, Lᴵﹳ/ʾˊ;->DEFAULT_INSTANCE:Lᴵﹳ/ʾˊ;

    const-class v1, Lᴵﹳ/ʾˊ;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->ـˆ(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/ـˆ;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lᴵﹳ/ʾˊ;->configName_:Ljava/lang/String;

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ـˏ;->ˈٴ:Lcom/google/crypto/tink/shaded/protobuf/ـˏ;

    iput-object v0, p0, Lᴵﹳ/ʾˊ;->entry_:Lcom/google/crypto/tink/shaded/protobuf/ᵢˏ;

    return-void
.end method


# virtual methods
.method public final ˆʾ(I)Ljava/lang/Object;
    .locals 4

    .prologue
    invoke-static {p1}, Lʻٴ/ᵎﹶ;->ˈ(I)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x2

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    sget-object p1, Lᴵﹳ/ʾˊ;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/ˊˋ;

    if-nez p1, :cond_1

    const-class v0, Lᴵﹳ/ʾˊ;

    monitor-enter v0

    :try_start_0
    sget-object p1, Lᴵﹳ/ʾˊ;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/ˊˋ;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/ʻٴ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lᴵﹳ/ʾˊ;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/ˊˋ;

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
    sget-object p1, Lᴵﹳ/ʾˊ;->DEFAULT_INSTANCE:Lᴵﹳ/ʾˊ;

    return-object p1

    :pswitch_2
    new-instance p1, Lᴵﹳ/ᵎˊ;

    sget-object v0, Lᴵﹳ/ʾˊ;->DEFAULT_INSTANCE:Lᴵﹳ/ʾˊ;

    invoke-direct {p1, v0, v1}, Lᴵﹳ/ᵎˊ;-><init>(Lcom/google/crypto/tink/shaded/protobuf/ـˆ;I)V

    return-object p1

    :pswitch_3
    new-instance p1, Lᴵﹳ/ʾˊ;

    invoke-direct {p1}, Lᴵﹳ/ʾˊ;-><init>()V

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const-string v2, "configName_"

    const/4 v3, 0x0

    aput-object v2, p1, v3

    const-string v2, "entry_"

    aput-object v2, p1, v0

    const-class v0, Lᴵﹳ/ᐧﾞ;

    aput-object v0, p1, v1

    const-string v0, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u0208\u0002\u001b"

    sget-object v1, Lᴵﹳ/ʾˊ;->DEFAULT_INSTANCE:Lᴵﹳ/ʾˊ;

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
