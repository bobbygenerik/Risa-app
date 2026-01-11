.class public final Lˏᵢ/ˈ;
.super Landroidx/datastore/preferences/protobuf/ʻٴ;
.source "SourceFile"


# static fields
.field private static final DEFAULT_INSTANCE:Lˏᵢ/ˈ;

.field private static volatile PARSER:Landroidx/datastore/preferences/protobuf/ˈʿ; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/protobuf/\u02c8\u02bf;"
        }
    .end annotation
.end field

.field public static final PREFERENCES_FIELD_NUMBER:I = 0x1


# instance fields
.field private preferences_:Landroidx/datastore/preferences/protobuf/ˊʻ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/protobuf/\u02ca\u02bb;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lˏᵢ/ˈ;

    invoke-direct {v0}, Lˏᵢ/ˈ;-><init>()V

    sput-object v0, Lˏᵢ/ˈ;->DEFAULT_INSTANCE:Lˏᵢ/ˈ;

    const-class v1, Lˏᵢ/ˈ;

    invoke-static {v1, v0}, Landroidx/datastore/preferences/protobuf/ʻٴ;->ˆʾ(Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/ʻٴ;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/ʻٴ;-><init>()V

    sget-object v0, Landroidx/datastore/preferences/protobuf/ˊʻ;->ᴵˊ:Landroidx/datastore/preferences/protobuf/ˊʻ;

    iput-object v0, p0, Lˏᵢ/ˈ;->preferences_:Landroidx/datastore/preferences/protobuf/ˊʻ;

    return-void
.end method

.method public static ˉˆ(Ljava/io/InputStream;)Lˏᵢ/ˈ;
    .locals 4

    .prologue
    sget-object v0, Lˏᵢ/ˈ;->DEFAULT_INSTANCE:Lˏᵢ/ˈ;

    if-nez p0, :cond_0

    sget-object p0, Landroidx/datastore/preferences/protobuf/ʾᵎ;->ⁱˊ:[B

    array-length v1, p0

    new-instance v2, Landroidx/datastore/preferences/protobuf/ᵔᵢ;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v1, v3}, Landroidx/datastore/preferences/protobuf/ᵔᵢ;-><init>([BIIZ)V

    :try_start_0
    invoke-virtual {v2, v1}, Landroidx/datastore/preferences/protobuf/ᵔᵢ;->ﾞʻ(I)I
    :try_end_0
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    new-instance v2, Landroidx/datastore/preferences/protobuf/ʼˎ;

    invoke-direct {v2, p0}, Landroidx/datastore/preferences/protobuf/ʼˎ;-><init>(Ljava/io/InputStream;)V

    :goto_0
    invoke-static {}, Landroidx/datastore/preferences/protobuf/ᵔʾ;->ﹳٴ()Landroidx/datastore/preferences/protobuf/ᵔʾ;

    move-result-object p0

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/ʻٴ;->ʼˎ()Landroidx/datastore/preferences/protobuf/ʻٴ;

    move-result-object v0

    :try_start_1
    sget-object v1, Landroidx/datastore/preferences/protobuf/ˑٴ;->ʽ:Landroidx/datastore/preferences/protobuf/ˑٴ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/datastore/preferences/protobuf/ˑٴ;->ﹳٴ(Ljava/lang/Class;)Landroidx/datastore/preferences/protobuf/ʼˈ;

    move-result-object v1

    iget-object v3, v2, Landroidx/datastore/preferences/protobuf/ˆʾ;->ⁱˊ:Ljava/lang/Object;

    check-cast v3, Landroidx/datastore/preferences/protobuf/ٴﹶ;

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance v3, Landroidx/datastore/preferences/protobuf/ٴﹶ;

    invoke-direct {v3, v2}, Landroidx/datastore/preferences/protobuf/ٴﹶ;-><init>(Landroidx/datastore/preferences/protobuf/ˆʾ;)V

    :goto_1
    invoke-interface {v1, v0, v3, p0}, Landroidx/datastore/preferences/protobuf/ʼˈ;->ᵔᵢ(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/ٴﹶ;Landroidx/datastore/preferences/protobuf/ᵔʾ;)V

    invoke-interface {v1, v0}, Landroidx/datastore/preferences/protobuf/ʼˈ;->ⁱˊ(Ljava/lang/Object;)V
    :try_end_1
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Landroidx/datastore/preferences/protobuf/UninitializedMessageException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 p0, 0x1

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/ʻٴ;->ﾞᴵ(Landroidx/datastore/preferences/protobuf/ʻٴ;Z)Z

    move-result p0

    if-eqz p0, :cond_2

    check-cast v0, Lˏᵢ/ˈ;

    return-object v0

    :cond_2
    new-instance p0, Landroidx/datastore/preferences/protobuf/UninitializedMessageException;

    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/UninitializedMessageException;-><init>()V

    new-instance v0, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    throw p0

    :cond_3
    throw p0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    throw p0

    :cond_4
    new-instance v0, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_3
    move-exception p0

    new-instance v0, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_4
    move-exception p0

    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->ʾˋ:Z

    if-eqz v0, :cond_5

    new-instance v0, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, v0

    :cond_5
    throw p0
.end method

.method public static ᵔʾ()Lˏᵢ/ⁱˊ;
    .locals 2

    sget-object v0, Lˏᵢ/ˈ;->DEFAULT_INSTANCE:Lˏᵢ/ˈ;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lˏᵢ/ˈ;->ʽ(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/ˏי;

    check-cast v0, Lˏᵢ/ⁱˊ;

    return-object v0
.end method

.method public static ﾞʻ(Lˏᵢ/ˈ;)Landroidx/datastore/preferences/protobuf/ˊʻ;
    .locals 2

    .prologue
    iget-object v0, p0, Lˏᵢ/ˈ;->preferences_:Landroidx/datastore/preferences/protobuf/ˊʻ;

    iget-boolean v1, v0, Landroidx/datastore/preferences/protobuf/ˊʻ;->ʾˋ:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/ˊʻ;->ⁱˊ()Landroidx/datastore/preferences/protobuf/ˊʻ;

    move-result-object v0

    iput-object v0, p0, Lˏᵢ/ˈ;->preferences_:Landroidx/datastore/preferences/protobuf/ˊʻ;

    :cond_0
    iget-object p0, p0, Lˏᵢ/ˈ;->preferences_:Landroidx/datastore/preferences/protobuf/ˊʻ;

    return-object p0
.end method


# virtual methods
.method public final ʽ(I)Ljava/lang/Object;
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
    sget-object p1, Lˏᵢ/ˈ;->PARSER:Landroidx/datastore/preferences/protobuf/ˈʿ;

    if-nez p1, :cond_1

    const-class v0, Lˏᵢ/ˈ;

    monitor-enter v0

    :try_start_0
    sget-object p1, Lˏᵢ/ˈ;->PARSER:Landroidx/datastore/preferences/protobuf/ˈʿ;

    if-nez p1, :cond_0

    new-instance p1, Landroidx/datastore/preferences/protobuf/ʽﹳ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lˏᵢ/ˈ;->PARSER:Landroidx/datastore/preferences/protobuf/ˈʿ;

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
    sget-object p1, Lˏᵢ/ˈ;->DEFAULT_INSTANCE:Lˏᵢ/ˈ;

    return-object p1

    :pswitch_2
    new-instance p1, Lˏᵢ/ⁱˊ;

    sget-object v0, Lˏᵢ/ˈ;->DEFAULT_INSTANCE:Lˏᵢ/ˈ;

    invoke-direct {p1, v0}, Landroidx/datastore/preferences/protobuf/ˏי;-><init>(Landroidx/datastore/preferences/protobuf/ʻٴ;)V

    return-object p1

    :pswitch_3
    new-instance p1, Lˏᵢ/ˈ;

    invoke-direct {p1}, Lˏᵢ/ˈ;-><init>()V

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const-string v1, "preferences_"

    const/4 v2, 0x0

    aput-object v1, p1, v2

    sget-object v1, Lˏᵢ/ʽ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ᴵᵔ;

    aput-object v1, p1, v0

    const-string v0, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u00012"

    sget-object v1, Lˏᵢ/ˈ;->DEFAULT_INSTANCE:Lˏᵢ/ˈ;

    new-instance v2, Landroidx/datastore/preferences/protobuf/ˊˋ;

    invoke-direct {v2, v1, v0, p1}, Landroidx/datastore/preferences/protobuf/ˊˋ;-><init>(Landroidx/datastore/preferences/protobuf/ʻٴ;Ljava/lang/String;[Ljava/lang/Object;)V

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

.method public final ˉʿ()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lˏᵢ/ˈ;->preferences_:Landroidx/datastore/preferences/protobuf/ˊʻ;

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
