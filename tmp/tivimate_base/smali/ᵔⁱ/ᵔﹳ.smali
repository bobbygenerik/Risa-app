.class public final Lᵔⁱ/ᵔﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᵔⁱ/ٴﹶ;


# instance fields
.field public final ʽʽ:I

.field public final ʾˋ:J

.field public final ˈٴ:Lـˊ/ʼᐧ;

.field public volatile ˊʻ:Ljava/lang/Object;

.field public final ᴵˊ:Lـˊ/ᵔᵢ;

.field public final ᴵᵔ:Lᵔⁱ/ʼᐧ;


# direct methods
.method public constructor <init>(Lـˊ/ﾞᴵ;Lـˊ/ᵔᵢ;ILᵔⁱ/ʼᐧ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lـˊ/ʼᐧ;

    invoke-direct {v0, p1}, Lـˊ/ʼᐧ;-><init>(Lـˊ/ﾞᴵ;)V

    iput-object v0, p0, Lᵔⁱ/ᵔﹳ;->ˈٴ:Lـˊ/ʼᐧ;

    iput-object p2, p0, Lᵔⁱ/ᵔﹳ;->ᴵˊ:Lـˊ/ᵔᵢ;

    iput p3, p0, Lᵔⁱ/ᵔﹳ;->ʽʽ:I

    iput-object p4, p0, Lᵔⁱ/ᵔﹳ;->ᴵᵔ:Lᵔⁱ/ʼᐧ;

    sget-object p1, Lﹳᵢ/ﹳᐧ;->ⁱˊ:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide p1

    iput-wide p1, p0, Lᵔⁱ/ᵔﹳ;->ʾˋ:J

    return-void
.end method


# virtual methods
.method public final ʽ()V
    .locals 3

    .prologue
    iget-object v0, p0, Lᵔⁱ/ᵔﹳ;->ˈٴ:Lـˊ/ʼᐧ;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lـˊ/ʼᐧ;->ᴵˊ:J

    new-instance v0, Lـˊ/ᵎﹶ;

    iget-object v1, p0, Lᵔⁱ/ᵔﹳ;->ˈٴ:Lـˊ/ʼᐧ;

    iget-object v2, p0, Lᵔⁱ/ᵔﹳ;->ᴵˊ:Lـˊ/ᵔᵢ;

    invoke-direct {v0, v1, v2}, Lـˊ/ᵎﹶ;-><init>(Lـˊ/ﾞᴵ;Lـˊ/ᵔᵢ;)V

    :try_start_0
    iget-object v1, v0, Lـˊ/ᵎﹶ;->ʾˋ:Lـˊ/ﾞᴵ;

    iget-object v2, v0, Lـˊ/ᵎﹶ;->ᴵˊ:Lـˊ/ᵔᵢ;

    invoke-interface {v1, v2}, Lـˊ/ﾞᴵ;->ʽʽ(Lـˊ/ᵔᵢ;)J

    const/4 v1, 0x1

    iput-boolean v1, v0, Lـˊ/ᵎﹶ;->ˈٴ:Z

    iget-object v1, p0, Lᵔⁱ/ᵔﹳ;->ˈٴ:Lـˊ/ʼᐧ;

    iget-object v1, v1, Lـˊ/ʼᐧ;->ʾˋ:Lـˊ/ﾞᴵ;

    invoke-interface {v1}, Lـˊ/ﾞᴵ;->יـ()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lᵔⁱ/ᵔﹳ;->ᴵᵔ:Lᵔⁱ/ʼᐧ;

    invoke-interface {v2, v1, v0}, Lᵔⁱ/ʼᐧ;->ˈ(Landroid/net/Uri;Lـˊ/ᵎﹶ;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lᵔⁱ/ᵔﹳ;->ˊʻ:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lᐧˎ/ʼʼ;->ᵎﹶ(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lᐧˎ/ʼʼ;->ᵎﹶ(Ljava/io/Closeable;)V

    throw v1
.end method

.method public final ʽﹳ()V
    .locals 0

    return-void
.end method
