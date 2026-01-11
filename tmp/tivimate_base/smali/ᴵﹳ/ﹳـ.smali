.class public final Lᴵﹳ/ﹳـ;
.super Lcom/google/crypto/tink/shaded/protobuf/ـˆ;
.source "SourceFile"


# static fields
.field private static final DEFAULT_INSTANCE:Lᴵﹳ/ﹳـ;

.field public static final HASH_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/ˊˋ; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/\u02ca\u02cb;"
        }
    .end annotation
.end field

.field public static final TAG_SIZE_FIELD_NUMBER:I = 0x2


# instance fields
.field private hash_:I

.field private tagSize_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lᴵﹳ/ﹳـ;

    invoke-direct {v0}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;-><init>()V

    sput-object v0, Lᴵﹳ/ﹳـ;->DEFAULT_INSTANCE:Lᴵﹳ/ﹳـ;

    const-class v1, Lᴵﹳ/ﹳـ;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->ـˆ(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/ـˆ;)V

    return-void
.end method

.method public static ʾˋ(Lᴵﹳ/ﹳـ;I)V
    .locals 0

    iput p1, p0, Lᴵﹳ/ﹳـ;->tagSize_:I

    return-void
.end method

.method public static ᴵˊ()Lᴵﹳ/ﹳـ;
    .locals 1

    sget-object v0, Lᴵﹳ/ﹳـ;->DEFAULT_INSTANCE:Lᴵﹳ/ﹳـ;

    return-object v0
.end method

.method public static ᴵᵔ()Lᴵﹳ/ـˏ;
    .locals 1

    sget-object v0, Lᴵﹳ/ﹳـ;->DEFAULT_INSTANCE:Lᴵﹳ/ﹳـ;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;->ʼˎ()Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;

    move-result-object v0

    check-cast v0, Lᴵﹳ/ـˏ;

    return-object v0
.end method

.method public static ᵢˏ(Lᴵﹳ/ﹳـ;Lᴵﹳ/ˈʿ;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lᴵﹳ/ˈʿ;->ﹳٴ()I

    move-result p1

    iput p1, p0, Lᴵﹳ/ﹳـ;->hash_:I

    return-void
.end method


# virtual methods
.method public final ʽʽ()Lᴵﹳ/ˈʿ;
    .locals 2

    .prologue
    iget v0, p0, Lᴵﹳ/ﹳـ;->hash_:I

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lᴵﹳ/ˈʿ;->ٴᵢ:Lᴵﹳ/ˈʿ;

    goto :goto_0

    :cond_1
    sget-object v0, Lᴵﹳ/ˈʿ;->ˊʻ:Lᴵﹳ/ˈʿ;

    goto :goto_0

    :cond_2
    sget-object v0, Lᴵﹳ/ˈʿ;->ᴵᵔ:Lᴵﹳ/ˈʿ;

    goto :goto_0

    :cond_3
    sget-object v0, Lᴵﹳ/ˈʿ;->ˈٴ:Lᴵﹳ/ˈʿ;

    goto :goto_0

    :cond_4
    sget-object v0, Lᴵﹳ/ˈʿ;->ʽʽ:Lᴵﹳ/ˈʿ;

    goto :goto_0

    :cond_5
    sget-object v0, Lᴵﹳ/ˈʿ;->ᴵˊ:Lᴵﹳ/ˈʿ;

    :goto_0
    if-nez v0, :cond_6

    sget-object v0, Lᴵﹳ/ˈʿ;->ˉٴ:Lᴵﹳ/ˈʿ;

    :cond_6
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
    sget-object p1, Lᴵﹳ/ﹳـ;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/ˊˋ;

    if-nez p1, :cond_1

    const-class v0, Lᴵﹳ/ﹳـ;

    monitor-enter v0

    :try_start_0
    sget-object p1, Lᴵﹳ/ﹳـ;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/ˊˋ;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/ʻٴ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lᴵﹳ/ﹳـ;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/ˊˋ;

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
    sget-object p1, Lᴵﹳ/ﹳـ;->DEFAULT_INSTANCE:Lᴵﹳ/ﹳـ;

    return-object p1

    :pswitch_2
    new-instance p1, Lᴵﹳ/ـˏ;

    sget-object v0, Lᴵﹳ/ﹳـ;->DEFAULT_INSTANCE:Lᴵﹳ/ﹳـ;

    invoke-direct {p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;-><init>(Lcom/google/crypto/tink/shaded/protobuf/ـˆ;)V

    return-object p1

    :pswitch_3
    new-instance p1, Lᴵﹳ/ﹳـ;

    invoke-direct {p1}, Lcom/google/crypto/tink/shaded/protobuf/ـˆ;-><init>()V

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const-string v1, "hash_"

    const/4 v2, 0x0

    aput-object v1, p1, v2

    const-string v1, "tagSize_"

    aput-object v1, p1, v0

    const-string v0, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000c\u0002\u000b"

    sget-object v1, Lᴵﹳ/ﹳـ;->DEFAULT_INSTANCE:Lᴵﹳ/ﹳـ;

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

    iget v0, p0, Lᴵﹳ/ﹳـ;->tagSize_:I

    return v0
.end method
