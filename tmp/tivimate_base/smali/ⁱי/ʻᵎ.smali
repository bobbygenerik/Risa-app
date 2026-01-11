.class public final Lⁱי/ʻᵎ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lⁱי/ᵎⁱ;


# instance fields
.field public ʽʽ:J

.field public ʾˋ:J

.field public final ˈٴ:Ljava/lang/Object;

.field public ᴵˊ:Z

.field public ᴵᵔ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lᐧˎ/ˏי;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lⁱי/ʻᵎ;->ˈٴ:Ljava/lang/Object;

    sget-object p1, Lʽⁱ/ᵎⁱ;->ˈ:Lʽⁱ/ᵎⁱ;

    iput-object p1, p0, Lⁱי/ʻᵎ;->ᴵᵔ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lﹶﾞ/ᐧᴵ;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lⁱי/ʻᵎ;->ᴵᵔ:Ljava/lang/Object;

    invoke-static {p2}, Lٴﾞ/ʻٴ;->ʽ(Ljava/lang/String;)V

    iput-object p2, p0, Lⁱי/ʻᵎ;->ˈٴ:Ljava/lang/Object;

    iput-wide p3, p0, Lⁱי/ʻᵎ;->ʾˋ:J

    return-void
.end method


# virtual methods
.method public ʽ(Lʽⁱ/ᵎⁱ;)V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lⁱי/ʻᵎ;->ᴵˊ:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lⁱי/ʻᵎ;->ᵎﹶ()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lⁱי/ʻᵎ;->ﹳٴ(J)V

    :cond_0
    iput-object p1, p0, Lⁱי/ʻᵎ;->ᴵᵔ:Ljava/lang/Object;

    return-void
.end method

.method public ˈ()J
    .locals 4

    .prologue
    iget-boolean v0, p0, Lⁱי/ʻᵎ;->ᴵˊ:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lⁱי/ʻᵎ;->ᴵˊ:Z

    iget-object v0, p0, Lⁱי/ʻᵎ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᐧᴵ;

    iget-object v1, p0, Lⁱי/ʻᵎ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-wide v2, p0, Lⁱי/ʻᵎ;->ʾˋ:J

    invoke-virtual {v0}, Lﹶﾞ/ᐧᴵ;->ʼᵢ()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lⁱי/ʻᵎ;->ʽʽ:J

    :cond_0
    iget-wide v0, p0, Lⁱי/ʻᵎ;->ʽʽ:J

    return-wide v0
.end method

.method public ˑﹳ()Lʽⁱ/ᵎⁱ;
    .locals 1

    iget-object v0, p0, Lⁱי/ʻᵎ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v0, Lʽⁱ/ᵎⁱ;

    return-object v0
.end method

.method public ᵎﹶ()J
    .locals 7

    .prologue
    iget-wide v0, p0, Lⁱי/ʻᵎ;->ʾˋ:J

    iget-boolean v2, p0, Lⁱי/ʻᵎ;->ᴵˊ:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lⁱי/ʻᵎ;->ˈٴ:Ljava/lang/Object;

    check-cast v2, Lᐧˎ/ˏי;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lⁱי/ʻᵎ;->ʽʽ:J

    sub-long/2addr v2, v4

    iget-object v4, p0, Lⁱי/ʻᵎ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v4, Lʽⁱ/ᵎⁱ;

    iget v5, v4, Lʽⁱ/ᵎⁱ;->ﹳٴ:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    invoke-static {v2, v3}, Lᐧˎ/ʼʼ;->ʼˈ(J)J

    move-result-wide v2

    :goto_0
    add-long/2addr v2, v0

    return-wide v2

    :cond_0
    iget v4, v4, Lʽⁱ/ᵎⁱ;->ʽ:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public ᵔᵢ(J)V
    .locals 2

    iget-object v0, p0, Lⁱי/ʻᵎ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᐧᴵ;

    invoke-virtual {v0}, Lﹶﾞ/ᐧᴵ;->ʼᵢ()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lⁱי/ʻᵎ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-wide p1, p0, Lⁱי/ʻᵎ;->ʽʽ:J

    return-void
.end method

.method public ⁱˊ()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lⁱי/ʻᵎ;->ᴵˊ:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lⁱי/ʻᵎ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Lᐧˎ/ˏי;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lⁱי/ʻᵎ;->ʽʽ:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lⁱי/ʻᵎ;->ᴵˊ:Z

    :cond_0
    return-void
.end method

.method public ﹳٴ(J)V
    .locals 0

    .prologue
    iput-wide p1, p0, Lⁱי/ʻᵎ;->ʾˋ:J

    iget-boolean p1, p0, Lⁱי/ʻᵎ;->ᴵˊ:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lⁱי/ʻᵎ;->ˈٴ:Ljava/lang/Object;

    check-cast p1, Lᐧˎ/ˏי;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lⁱי/ʻᵎ;->ʽʽ:J

    :cond_0
    return-void
.end method

.method public synthetic ﾞᴵ()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
