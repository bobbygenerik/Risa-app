.class public final Lˈـ/ᵢˏ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final ٴᵢ:Ljava/nio/charset/Charset;


# instance fields
.field public final ʽʽ:Ljava/util/Map;

.field public final ʾˋ:Lﹶﾞ/ⁱי;

.field public ˈٴ:Lˈـ/ʼʼ;

.field public volatile ˊʻ:Z

.field public final ᴵˊ:Lᵔⁱ/ˉʿ;

.field public ᴵᵔ:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    sput-object v0, Lˈـ/ᵢˏ;->ٴᵢ:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Lﹶﾞ/ⁱי;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˈـ/ᵢˏ;->ʾˋ:Lﹶﾞ/ⁱי;

    new-instance p1, Lᵔⁱ/ˉʿ;

    const-string v0, "ExoPlayer:RtspMessageChannel:ReceiverLoader"

    invoke-direct {p1, v0}, Lᵔⁱ/ˉʿ;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lˈـ/ᵢˏ;->ᴵˊ:Lᵔⁱ/ˉʿ;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Lj$/util/DesugarCollections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lˈـ/ᵢˏ;->ʽʽ:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    .prologue
    iget-boolean v0, p0, Lˈـ/ᵢˏ;->ˊʻ:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lˈـ/ᵢˏ;->ˈٴ:Lˈـ/ʼʼ;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lˈـ/ʼʼ;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lˈـ/ᵢˏ;->ᴵˊ:Lᵔⁱ/ˉʿ;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lᵔⁱ/ˉʿ;->ˑﹳ(Lᵔⁱ/ﾞʻ;)V

    iget-object v1, p0, Lˈـ/ᵢˏ;->ᴵᵔ:Ljava/net/Socket;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    iput-boolean v0, p0, Lˈـ/ᵢˏ;->ˊʻ:Z

    return-void

    :goto_1
    iput-boolean v0, p0, Lˈـ/ᵢˏ;->ˊʻ:Z

    throw v1
.end method

.method public final ʽ(Ljava/net/Socket;)V
    .locals 3

    iput-object p1, p0, Lˈـ/ᵢˏ;->ᴵᵔ:Ljava/net/Socket;

    new-instance v0, Lˈـ/ʼʼ;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lˈـ/ʼʼ;-><init>(Lˈـ/ᵢˏ;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lˈـ/ᵢˏ;->ˈٴ:Lˈـ/ʼʼ;

    new-instance v0, Lˈـ/ʾᵎ;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lˈـ/ʾᵎ;-><init>(Lˈـ/ᵢˏ;Ljava/io/InputStream;)V

    new-instance p1, Lᵎˉ/ⁱˊ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iget-object v2, p0, Lˈـ/ᵢˏ;->ᴵˊ:Lᵔⁱ/ˉʿ;

    invoke-virtual {v2, v0, p1, v1}, Lᵔⁱ/ˉʿ;->ﾞᴵ(Lᵔⁱ/ٴﹶ;Lᵔⁱ/ʼˎ;I)V

    return-void
.end method

.method public final ᵎﹶ(Lʼʻ/ʿᵢ;)V
    .locals 4

    iget-object v0, p0, Lˈـ/ᵢˏ;->ˈٴ:Lˈـ/ʼʼ;

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    iget-object v0, p0, Lˈـ/ᵢˏ;->ˈٴ:Lˈـ/ʼʼ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lˈـ/ᴵˊ;->ᵔᵢ:Ljava/lang/String;

    new-instance v2, Lʻᴵ/ﹳٴ;

    invoke-direct {v2, v1}, Lʻᴵ/ﹳٴ;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lʻᴵ/ﹳٴ;->ᵔᵢ(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lˈـ/ᵢˏ;->ٴᵢ:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    iget-object v2, v0, Lˈـ/ʼʼ;->ʽʽ:Landroid/os/Handler;

    new-instance v3, Lʻʿ/ᵔʾ;

    invoke-direct {v3, v0, v1, p1}, Lʻʿ/ᵔʾ;-><init>(Lˈـ/ʼʼ;[BLjava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
