.class public final Lᴵﹳ/ᐧﾞ;
.super Lcom/google/crypto/tink/shaded/protobuf/ـˆ;
.source "SourceFile"


# static fields
.field public static final CATALOGUE_NAME_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Lᴵﹳ/ᐧﾞ;

.field public static final KEY_MANAGER_VERSION_FIELD_NUMBER:I = 0x3

.field public static final NEW_KEY_ALLOWED_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/ˊˋ; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/\u02ca\u02cb;"
        }
    .end annotation
.end field

.field public static final PRIMITIVE_NAME_FIELD_NUMBER:I = 0x1

.field public static final TYPE_URL_FIELD_NUMBER:I = 0x2


# instance fields
.field private catalogueName_:Ljava/lang/String;

.field private keyManagerVersion_:I

.field private newKeyAllowed_:Z

.field private primitiveName_:Ljava/lang/String;

.field private typeUrl_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lᴵﹳ/ᐧﾞ;

    invoke-direct {v0}, Lᴵﹳ/ᐧﾞ;-><init>()V

    sput-object v0, Lᴵﹳ/ᐧﾞ;->DEFAULT_INSTANCE:Lᴵﹳ/ᐧﾞ;

    const-class v1, Lᴵﹳ/ᐧﾞ;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->ـˆ(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/ـˆ;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lᴵﹳ/ᐧﾞ;->primitiveName_:Ljava/lang/String;

    iput-object v0, p0, Lᴵﹳ/ᐧﾞ;->typeUrl_:Ljava/lang/String;

    iput-object v0, p0, Lᴵﹳ/ᐧﾞ;->catalogueName_:Ljava/lang/String;

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
    sget-object p1, Lᴵﹳ/ᐧﾞ;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/ˊˋ;

    if-nez p1, :cond_1

    const-class v0, Lᴵﹳ/ᐧﾞ;

    monitor-enter v0

    :try_start_0
    sget-object p1, Lᴵﹳ/ᐧﾞ;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/ˊˋ;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/ʻٴ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lᴵﹳ/ᐧﾞ;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/ˊˋ;

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
    sget-object p1, Lᴵﹳ/ᐧﾞ;->DEFAULT_INSTANCE:Lᴵﹳ/ᐧﾞ;

    return-object p1

    :pswitch_2
    new-instance p1, Lᴵﹳ/ᵎˊ;

    sget-object v1, Lᴵﹳ/ᐧﾞ;->DEFAULT_INSTANCE:Lᴵﹳ/ᐧﾞ;

    invoke-direct {p1, v1, v0}, Lᴵﹳ/ᵎˊ;-><init>(Lcom/google/crypto/tink/shaded/protobuf/ـˆ;I)V

    return-object p1

    :pswitch_3
    new-instance p1, Lᴵﹳ/ᐧﾞ;

    invoke-direct {p1}, Lᴵﹳ/ᐧﾞ;-><init>()V

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const-string v1, "primitiveName_"

    const/4 v2, 0x0

    aput-object v1, p1, v2

    const-string v1, "typeUrl_"

    aput-object v1, p1, v0

    const-string v0, "keyManagerVersion_"

    const/4 v1, 0x2

    aput-object v0, p1, v1

    const-string v0, "newKeyAllowed_"

    const/4 v1, 0x3

    aput-object v0, p1, v1

    const-string v0, "catalogueName_"

    const/4 v1, 0x4

    aput-object v0, p1, v1

    const-string v0, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u000b\u0004\u0007\u0005\u0208"

    sget-object v1, Lᴵﹳ/ᐧﾞ;->DEFAULT_INSTANCE:Lᴵﹳ/ᐧﾞ;

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
