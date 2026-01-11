.class public final Lᴵﹳ/ˉـ;
.super Lcom/google/crypto/tink/shaded/protobuf/ـˆ;
.source "SourceFile"


# static fields
.field private static final DEFAULT_INSTANCE:Lᴵﹳ/ˉـ;

.field public static final KEY_MATERIAL_TYPE_FIELD_NUMBER:I = 0x3

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
.field private keyMaterialType_:I

.field private typeUrl_:Ljava/lang/String;

.field private value_:Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lᴵﹳ/ˉـ;

    invoke-direct {v0}, Lᴵﹳ/ˉـ;-><init>()V

    sput-object v0, Lᴵﹳ/ˉـ;->DEFAULT_INSTANCE:Lᴵﹳ/ˉـ;

    const-class v1, Lᴵﹳ/ˉـ;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->ـˆ(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/ـˆ;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lᴵﹳ/ˉـ;->typeUrl_:Ljava/lang/String;

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;

    iput-object v0, p0, Lᴵﹳ/ˉـ;->value_:Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    return-void
.end method

.method public static ʽʽ()Lᴵﹳ/ˉـ;
    .locals 1

    sget-object v0, Lᴵﹳ/ˉـ;->DEFAULT_INSTANCE:Lᴵﹳ/ˉـ;

    return-object v0
.end method

.method public static ʾˋ(Lᴵﹳ/ˉـ;Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lᴵﹳ/ˉـ;->value_:Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    return-void
.end method

.method public static ٴᵢ()Lᴵﹳ/ˈⁱ;
    .locals 1

    sget-object v0, Lᴵﹳ/ˉـ;->DEFAULT_INSTANCE:Lᴵﹳ/ˉـ;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->ʼˎ()Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;

    move-result-object v0

    check-cast v0, Lᴵﹳ/ˈⁱ;

    return-object v0
.end method

.method public static ᴵˊ(Lᴵﹳ/ˉـ;Lᴵﹳ/ᴵˑ;)V
    .locals 1

    .prologue
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lᴵﹳ/ᴵˑ;->ٴᵢ:Lᴵﹳ/ᴵˑ;

    if-eq p1, v0, :cond_0

    iget p1, p1, Lᴵﹳ/ᴵˑ;->ʾˋ:I

    iput p1, p0, Lᴵﹳ/ˉـ;->keyMaterialType_:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t get the number of an unknown enum value."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ᵢˏ(Lᴵﹳ/ˉـ;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lᴵﹳ/ˉـ;->typeUrl_:Ljava/lang/String;

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
    sget-object p1, Lᴵﹳ/ˉـ;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/ˊˋ;

    if-nez p1, :cond_1

    const-class v0, Lᴵﹳ/ˉـ;

    monitor-enter v0

    :try_start_0
    sget-object p1, Lᴵﹳ/ˉـ;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/ˊˋ;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/ʻٴ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lᴵﹳ/ˉـ;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/ˊˋ;

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
    sget-object p1, Lᴵﹳ/ˉـ;->DEFAULT_INSTANCE:Lᴵﹳ/ˉـ;

    return-object p1

    :pswitch_2
    new-instance p1, Lᴵﹳ/ˈⁱ;

    sget-object v0, Lᴵﹳ/ˉـ;->DEFAULT_INSTANCE:Lᴵﹳ/ˉـ;

    invoke-direct {p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;-><init>(Lcom/google/crypto/tink/shaded/protobuf/ـˆ;)V

    return-object p1

    :pswitch_3
    new-instance p1, Lᴵﹳ/ˉـ;

    invoke-direct {p1}, Lᴵﹳ/ˉـ;-><init>()V

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const-string v1, "typeUrl_"

    const/4 v2, 0x0

    aput-object v1, p1, v2

    const-string v1, "value_"

    aput-object v1, p1, v0

    const-string v0, "keyMaterialType_"

    const/4 v1, 0x2

    aput-object v0, p1, v1

    const-string v0, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\n\u0003\u000c"

    sget-object v1, Lᴵﹳ/ˉـ;->DEFAULT_INSTANCE:Lᴵﹳ/ˉـ;

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

.method public final ˈٴ()Lᴵﹳ/ᴵˑ;
    .locals 2

    .prologue
    iget v0, p0, Lᴵﹳ/ˉـ;->keyMaterialType_:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lᴵﹳ/ᴵˑ;->ˊʻ:Lᴵﹳ/ᴵˑ;

    goto :goto_0

    :cond_1
    sget-object v0, Lᴵﹳ/ᴵˑ;->ᴵᵔ:Lᴵﹳ/ᴵˑ;

    goto :goto_0

    :cond_2
    sget-object v0, Lᴵﹳ/ᴵˑ;->ˈٴ:Lᴵﹳ/ᴵˑ;

    goto :goto_0

    :cond_3
    sget-object v0, Lᴵﹳ/ᴵˑ;->ʽʽ:Lᴵﹳ/ᴵˑ;

    goto :goto_0

    :cond_4
    sget-object v0, Lᴵﹳ/ᴵˑ;->ᴵˊ:Lᴵﹳ/ᴵˑ;

    :goto_0
    if-nez v0, :cond_5

    sget-object v0, Lᴵﹳ/ᴵˑ;->ٴᵢ:Lᴵﹳ/ᴵˑ;

    :cond_5
    return-object v0
.end method

.method public final ˊʻ()Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;
    .locals 1

    iget-object v0, p0, Lᴵﹳ/ˉـ;->value_:Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    return-object v0
.end method

.method public final ᴵᵔ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lᴵﹳ/ˉـ;->typeUrl_:Ljava/lang/String;

    return-object v0
.end method
