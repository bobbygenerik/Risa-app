.class public final Lˈـ/ʽﹳ;
.super Lﹳᵢ/ﹳٴ;
.source "SourceFile"


# instance fields
.field public ˆﾞ:Z

.field public ˈʿ:Z

.field public final ˉٴ:Lˈـ/ˈ;

.field public ˑٴ:Lʽⁱ/ᴵˊ;

.field public final ٴʼ:Landroid/net/Uri;

.field public final ᵎˊ:Ljavax/net/SocketFactory;

.field public final ᵎⁱ:Ljava/lang/String;

.field public ᵔי:J

.field public ᵔٴ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "media3.exoplayer.rtsp"

    invoke-static {v0}, Lʽⁱ/ʽʽ;->ﹳٴ(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lʽⁱ/ᴵˊ;Lˈـ/ˈ;Ljavax/net/SocketFactory;)V
    .locals 1

    .prologue
    invoke-direct {p0}, Lﹳᵢ/ﹳٴ;-><init>()V

    iput-object p1, p0, Lˈـ/ʽﹳ;->ˑٴ:Lʽⁱ/ᴵˊ;

    iput-object p2, p0, Lˈـ/ʽﹳ;->ˉٴ:Lˈـ/ˈ;

    const-string p2, "AndroidXMedia3/1.8.0"

    iput-object p2, p0, Lˈـ/ʽﹳ;->ᵎⁱ:Ljava/lang/String;

    iget-object p1, p1, Lʽⁱ/ᴵˊ;->ⁱˊ:Lʽⁱ/ʼʼ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lʽⁱ/ʼʼ;->ﹳٴ:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string v0, "rtspt"

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "rtsp"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lˈـ/ʽﹳ;->ٴʼ:Landroid/net/Uri;

    iput-object p3, p0, Lˈـ/ʽﹳ;->ᵎˊ:Ljavax/net/SocketFactory;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lˈـ/ʽﹳ;->ᵔי:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lˈـ/ʽﹳ;->ˈʿ:Z

    return-void
.end method


# virtual methods
.method public final ʾᵎ()V
    .locals 0

    return-void
.end method

.method public final ˈ()V
    .locals 0

    return-void
.end method

.method public final ˏי(Lـˊ/ᵔﹳ;)V
    .locals 0

    invoke-virtual {p0}, Lˈـ/ʽﹳ;->ᵢˏ()V

    return-void
.end method

.method public final ˑﹳ(Lﹳᵢ/ʾᵎ;)V
    .locals 6

    .prologue
    check-cast p1, Lˈـ/יـ;

    iget-object v0, p1, Lˈـ/יـ;->ᴵᵔ:Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lˈـ/ﹳᐧ;

    iget-boolean v4, v2, Lˈـ/ﹳᐧ;->ˑﹳ:Z

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, v2, Lˈـ/ﹳᐧ;->ⁱˊ:Lᵔⁱ/ˉʿ;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lᵔⁱ/ˉʿ;->ˑﹳ(Lᵔⁱ/ﾞʻ;)V

    iget-object v4, v2, Lˈـ/ﹳᐧ;->ʽ:Lﹳᵢ/ᴵˑ;

    invoke-virtual {v4}, Lﹳᵢ/ᴵˑ;->ˈٴ()V

    iput-boolean v3, v2, Lˈـ/ﹳᐧ;->ˑﹳ:Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lˈـ/יـ;->ˈٴ:Lˈـ/ᵔʾ;

    invoke-static {v0}, Lᐧˎ/ʼʼ;->ᵎﹶ(Ljava/io/Closeable;)V

    iput-boolean v3, p1, Lˈـ/יـ;->ˊˋ:Z

    return-void
.end method

.method public final declared-synchronized ᵔʾ(Lʽⁱ/ᴵˊ;)V
    .locals 0

    .prologue
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lˈـ/ʽﹳ;->ˑٴ:Lʽⁱ/ᴵˊ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final ᵢˏ()V
    .locals 6

    .prologue
    new-instance v0, Lﹳᵢ/ᐧﾞ;

    iget-wide v1, p0, Lˈـ/ʽﹳ;->ᵔי:J

    iget-boolean v3, p0, Lˈـ/ʽﹳ;->ˆﾞ:Z

    iget-boolean v4, p0, Lˈـ/ʽﹳ;->ᵔٴ:Z

    invoke-virtual {p0}, Lˈـ/ʽﹳ;->ﹳٴ()Lʽⁱ/ᴵˊ;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lﹳᵢ/ᐧﾞ;-><init>(JZZLʽⁱ/ᴵˊ;)V

    iget-boolean v1, p0, Lˈـ/ʽﹳ;->ˈʿ:Z

    if-eqz v1, :cond_0

    new-instance v1, Lˈـ/ˏי;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lˈـ/ˏי;-><init>(Lʽⁱ/ʼˈ;I)V

    move-object v0, v1

    :cond_0
    invoke-virtual {p0, v0}, Lﹳᵢ/ﹳٴ;->ʻٴ(Lʽⁱ/ʼˈ;)V

    return-void
.end method

.method public final ⁱˊ(Lﹳᵢ/ᵢˏ;Lᵔⁱ/ˑﹳ;J)Lﹳᵢ/ʾᵎ;
    .locals 7

    new-instance v0, Lˈـ/יـ;

    new-instance v4, Landroidx/leanback/widget/ˉˆ;

    const/16 p1, 0x15

    invoke-direct {v4, p1, p0}, Landroidx/leanback/widget/ˉˆ;-><init>(ILjava/lang/Object;)V

    iget-object v5, p0, Lˈـ/ʽﹳ;->ᵎⁱ:Ljava/lang/String;

    iget-object v6, p0, Lˈـ/ʽﹳ;->ᵎˊ:Ljavax/net/SocketFactory;

    iget-object v2, p0, Lˈـ/ʽﹳ;->ˉٴ:Lˈـ/ˈ;

    iget-object v3, p0, Lˈـ/ʽﹳ;->ٴʼ:Landroid/net/Uri;

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lˈـ/יـ;-><init>(Lᵔⁱ/ˑﹳ;Lˈـ/ˈ;Landroid/net/Uri;Landroidx/leanback/widget/ˉˆ;Ljava/lang/String;Ljavax/net/SocketFactory;)V

    return-object v0
.end method

.method public final declared-synchronized ﹳٴ()Lʽⁱ/ᴵˊ;
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lˈـ/ʽﹳ;->ˑٴ:Lʽⁱ/ᴵˊ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
