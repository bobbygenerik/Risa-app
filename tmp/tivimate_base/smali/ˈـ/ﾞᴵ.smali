.class public final Lˈـ/ﾞᴵ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᵔⁱ/ٴﹶ;


# instance fields
.field public final ʽʽ:Lʻʿ/ˈ;

.field public final ʾˋ:I

.field public final ˈٴ:Lﹶﾞ/ⁱי;

.field public ˉٴ:Lˈـ/ᵎﹶ;

.field public final ˊʻ:Lˈـ/ˈ;

.field public volatile ٴʼ:Z

.field public ٴᵢ:Lˈـ/ˑﹳ;

.field public final ᴵˊ:Lˈـ/ʻٴ;

.field public final ᴵᵔ:Landroid/os/Handler;

.field public volatile ᵎˊ:J

.field public ᵎⁱ:Lˊﾞ/ﾞʻ;

.field public volatile ᵔי:J


# direct methods
.method public constructor <init>(ILˈـ/ʻٴ;Lʻʿ/ˈ;Lﹶﾞ/ⁱי;Lˈـ/ˈ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lˈـ/ﾞᴵ;->ʾˋ:I

    iput-object p2, p0, Lˈـ/ﾞᴵ;->ᴵˊ:Lˈـ/ʻٴ;

    iput-object p3, p0, Lˈـ/ﾞᴵ;->ʽʽ:Lʻʿ/ˈ;

    iput-object p4, p0, Lˈـ/ﾞᴵ;->ˈٴ:Lﹶﾞ/ⁱי;

    const/4 p1, 0x0

    invoke-static {p1}, Lᐧˎ/ʼʼ;->ʼᐧ(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lˈـ/ﾞᴵ;->ᴵᵔ:Landroid/os/Handler;

    iput-object p5, p0, Lˈـ/ﾞᴵ;->ˊʻ:Lˈـ/ˈ;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lˈـ/ﾞᴵ;->ᵎˊ:J

    return-void
.end method


# virtual methods
.method public final ʽ()V
    .locals 13

    .prologue
    iget-boolean v0, p0, Lˈـ/ﾞᴵ;->ٴʼ:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lˈـ/ﾞᴵ;->ٴʼ:Z

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lˈـ/ﾞᴵ;->ٴᵢ:Lˈـ/ˑﹳ;

    if-nez v0, :cond_1

    iget-object v0, p0, Lˈـ/ﾞᴵ;->ˊʻ:Lˈـ/ˈ;

    iget v3, p0, Lˈـ/ﾞᴵ;->ʾˋ:I

    invoke-interface {v0, v3}, Lˈـ/ˈ;->ˆʾ(I)Lˈـ/ˑﹳ;

    move-result-object v0

    iput-object v0, p0, Lˈـ/ﾞᴵ;->ٴᵢ:Lˈـ/ˑﹳ;

    invoke-interface {v0}, Lˈـ/ˑﹳ;->ⁱˊ()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lˈـ/ﾞᴵ;->ٴᵢ:Lˈـ/ˑﹳ;

    iget-object v4, p0, Lˈـ/ﾞᴵ;->ᴵᵔ:Landroid/os/Handler;

    new-instance v5, Lcom/parse/ˊﾞ;

    const/4 v6, 0x2

    invoke-direct {v5, p0, v0, v3, v6}, Lcom/parse/ˊﾞ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v7, Lˊﾞ/ﾞʻ;

    iget-object v8, p0, Lˈـ/ﾞᴵ;->ٴᵢ:Lˈـ/ˑﹳ;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v9, 0x0

    const-wide/16 v11, -0x1

    invoke-direct/range {v7 .. v12}, Lˊﾞ/ﾞʻ;-><init>(Lʽⁱ/ˆʾ;JJ)V

    iput-object v7, p0, Lˈـ/ﾞᴵ;->ᵎⁱ:Lˊﾞ/ﾞʻ;

    new-instance v0, Lˈـ/ᵎﹶ;

    iget-object v3, p0, Lˈـ/ﾞᴵ;->ᴵˊ:Lˈـ/ʻٴ;

    iget-object v3, v3, Lˈـ/ʻٴ;->ﹳٴ:Lˈـ/ﾞʻ;

    iget v4, p0, Lˈـ/ﾞᴵ;->ʾˋ:I

    invoke-direct {v0, v3, v4}, Lˈـ/ᵎﹶ;-><init>(Lˈـ/ﾞʻ;I)V

    iput-object v0, p0, Lˈـ/ﾞᴵ;->ˉٴ:Lˈـ/ᵎﹶ;

    iget-object v3, p0, Lˈـ/ﾞᴵ;->ˈٴ:Lﹶﾞ/ⁱי;

    invoke-virtual {v0, v3}, Lˈـ/ᵎﹶ;->ʼˎ(Lˊﾞ/ᵔﹳ;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lˈـ/ﾞᴵ;->ٴʼ:Z

    if-nez v0, :cond_3

    iget-wide v3, p0, Lˈـ/ﾞᴵ;->ᵎˊ:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    iget-object v0, p0, Lˈـ/ﾞᴵ;->ˉٴ:Lˈـ/ᵎﹶ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v3, p0, Lˈـ/ﾞᴵ;->ᵔי:J

    iget-wide v7, p0, Lˈـ/ﾞᴵ;->ᵎˊ:J

    invoke-virtual {v0, v3, v4, v7, v8}, Lˈـ/ᵎﹶ;->ⁱˊ(JJ)V

    iput-wide v5, p0, Lˈـ/ﾞᴵ;->ᵎˊ:J

    :cond_2
    iget-object v0, p0, Lˈـ/ﾞᴵ;->ˉٴ:Lˈـ/ᵎﹶ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lˈـ/ﾞᴵ;->ᵎⁱ:Lˊﾞ/ﾞʻ;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lʽⁱ/ˏי;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v3, v4}, Lˈـ/ᵎﹶ;->ٴﹶ(Lˊﾞ/ʼᐧ;Lʽⁱ/ˏי;)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    :cond_3
    iput-boolean v1, p0, Lˈـ/ﾞᴵ;->ٴʼ:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lˈـ/ﾞᴵ;->ٴᵢ:Lˈـ/ˑﹳ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lˈـ/ˑﹳ;->ʼᐧ()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lˈـ/ﾞᴵ;->ٴᵢ:Lˈـ/ˑﹳ;

    invoke-static {v0}, Lˈˆ/ﾞᴵ;->ﾞᴵ(Lـˊ/ﾞᴵ;)V

    iput-object v2, p0, Lˈـ/ﾞᴵ;->ٴᵢ:Lˈـ/ˑﹳ;

    :cond_4
    return-void

    :goto_1
    iget-object v1, p0, Lˈـ/ﾞᴵ;->ٴᵢ:Lˈـ/ˑﹳ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Lˈـ/ˑﹳ;->ʼᐧ()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lˈـ/ﾞᴵ;->ٴᵢ:Lˈـ/ˑﹳ;

    invoke-static {v1}, Lˈˆ/ﾞᴵ;->ﾞᴵ(Lـˊ/ﾞᴵ;)V

    iput-object v2, p0, Lˈـ/ﾞᴵ;->ٴᵢ:Lˈـ/ˑﹳ;

    :cond_5
    throw v0
.end method

.method public final ʽﹳ()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lˈـ/ﾞᴵ;->ٴʼ:Z

    return-void
.end method
