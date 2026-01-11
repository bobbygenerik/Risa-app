.class public final Lˑˆ/ˈ;
.super Lﹳᵢ/ﹳٴ;
.source "SourceFile"

# interfaces
.implements Lᵔⁱ/ʼˎ;


# instance fields
.field public ʼˈ:Lـˊ/ﾞᴵ;

.field public ʿ:Landroid/os/Handler;

.field public ʿᵢ:Lʽⁱ/ᴵˊ;

.field public final ˆﾞ:Lⁱᴵ/ﾞʻ;

.field public final ˈʿ:J

.field public ˈⁱ:Lـˊ/ᵔﹳ;

.field public ˉـ:Lˎˉ/ʽ;

.field public final ˉٴ:Z

.field public final ˊˋ:Ljava/util/ArrayList;

.field public final ˋᵔ:Lᵔⁱ/ʼᐧ;

.field public final ˑٴ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

.field public ـˏ:Lᵔⁱ/ˉʿ;

.field public final ٴʼ:Lـˊ/ˑﹳ;

.field public ᴵˑ:J

.field public final ᵎˊ:Lٴʽ/יـ;

.field public final ᵎⁱ:Landroid/net/Uri;

.field public final ᵔי:Lᵔﹶ/ˈٴ;

.field public final ᵔٴ:Lʻᴵ/יـ;

.field public ﹳـ:Lᵔⁱ/ˉˆ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "media3.exoplayer.smoothstreaming"

    invoke-static {v0}, Lʽⁱ/ʽʽ;->ﹳٴ(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lʽⁱ/ᴵˊ;Lـˊ/ˑﹳ;Lᵔⁱ/ʼᐧ;Lٴʽ/יـ;Lᵔﹶ/ˈٴ;Lⁱᴵ/ﾞʻ;Lʻᴵ/יـ;J)V
    .locals 3

    .prologue
    invoke-direct {p0}, Lﹳᵢ/ﹳٴ;-><init>()V

    iput-object p1, p0, Lˑˆ/ˈ;->ʿᵢ:Lʽⁱ/ᴵˊ;

    iget-object p1, p1, Lʽⁱ/ᴵˊ;->ⁱˊ:Lʽⁱ/ʼʼ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lʽⁱ/ʼʼ;->ﹳٴ:Landroid/net/Uri;

    const/4 v0, 0x0

    iput-object v0, p0, Lˑˆ/ˈ;->ˉـ:Lˎˉ/ʽ;

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v2, Lᐧˎ/ʼʼ;->ﾞᴵ:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "Manifest"

    invoke-static {p1, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :cond_2
    :goto_0
    iput-object p1, p0, Lˑˆ/ˈ;->ᵎⁱ:Landroid/net/Uri;

    iput-object p2, p0, Lˑˆ/ˈ;->ٴʼ:Lـˊ/ˑﹳ;

    iput-object p3, p0, Lˑˆ/ˈ;->ˋᵔ:Lᵔⁱ/ʼᐧ;

    iput-object p4, p0, Lˑˆ/ˈ;->ᵎˊ:Lٴʽ/יـ;

    iput-object p5, p0, Lˑˆ/ˈ;->ᵔי:Lᵔﹶ/ˈٴ;

    iput-object p6, p0, Lˑˆ/ˈ;->ˆﾞ:Lⁱᴵ/ﾞʻ;

    iput-object p7, p0, Lˑˆ/ˈ;->ᵔٴ:Lʻᴵ/יـ;

    iput-wide p8, p0, Lˑˆ/ˈ;->ˈʿ:J

    invoke-virtual {p0, v0}, Lﹳᵢ/ﹳٴ;->ᵔﹳ(Lﹳᵢ/ᵢˏ;)Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    move-result-object p1

    iput-object p1, p0, Lˑˆ/ˈ;->ˑٴ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lˑˆ/ˈ;->ˉٴ:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lˑˆ/ˈ;->ˊˋ:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final ʼʼ(Lᵔⁱ/ٴﹶ;JJ)V
    .locals 3

    .prologue
    check-cast p1, Lᵔⁱ/ᵔﹳ;

    new-instance v0, Lﹳᵢ/ﹳᐧ;

    iget-wide v1, p1, Lᵔⁱ/ᵔﹳ;->ʾˋ:J

    iget-object v1, p1, Lᵔⁱ/ᵔﹳ;->ˈٴ:Lـˊ/ʼᐧ;

    iget-object v1, v1, Lـˊ/ʼᐧ;->ʽʽ:Landroid/net/Uri;

    invoke-direct {v0, p4, p5}, Lﹳᵢ/ﹳᐧ;-><init>(J)V

    iget-object v1, p0, Lˑˆ/ˈ;->ᵔٴ:Lʻᴵ/יـ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lˑˆ/ˈ;->ˑٴ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iget v2, p1, Lᵔⁱ/ᵔﹳ;->ʽʽ:I

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->יـ(Lﹳᵢ/ﹳᐧ;I)V

    iget-object p1, p1, Lᵔⁱ/ᵔﹳ;->ˊʻ:Ljava/lang/Object;

    check-cast p1, Lˎˉ/ʽ;

    iput-object p1, p0, Lˑˆ/ˈ;->ˉـ:Lˎˉ/ʽ;

    sub-long/2addr p2, p4

    iput-wide p2, p0, Lˑˆ/ˈ;->ᴵˑ:J

    invoke-virtual {p0}, Lˑˆ/ˈ;->ᵢˏ()V

    iget-object p1, p0, Lˑˆ/ˈ;->ˉـ:Lˎˉ/ʽ;

    iget-boolean p1, p1, Lˎˉ/ʽ;->ˈ:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-wide p1, p0, Lˑˆ/ˈ;->ᴵˑ:J

    const-wide/16 p3, 0x1388

    add-long/2addr p1, p3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    sub-long/2addr p1, p3

    const-wide/16 p3, 0x0

    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iget-object p3, p0, Lˑˆ/ˈ;->ʿ:Landroid/os/Handler;

    new-instance p4, Landroidx/lifecycle/ᵎⁱ;

    const/16 p5, 0x1b

    invoke-direct {p4, p5, p0}, Landroidx/lifecycle/ᵎⁱ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p3, p4, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final ʽﹳ(Lᵔⁱ/ٴﹶ;JJI)V
    .locals 13

    .prologue
    check-cast p1, Lᵔⁱ/ᵔﹳ;

    if-nez p6, :cond_0

    new-instance v0, Lﹳᵢ/ﹳᐧ;

    iget-wide v1, p1, Lᵔⁱ/ᵔﹳ;->ʾˋ:J

    iget-object v1, p1, Lᵔⁱ/ᵔﹳ;->ᴵˊ:Lـˊ/ᵔᵢ;

    invoke-direct {v0, v1}, Lﹳᵢ/ﹳᐧ;-><init>(Lـˊ/ᵔᵢ;)V

    :goto_0
    move-object v2, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lﹳᵢ/ﹳᐧ;

    iget-wide v1, p1, Lᵔⁱ/ᵔﹳ;->ʾˋ:J

    iget-object v1, p1, Lᵔⁱ/ᵔﹳ;->ˈٴ:Lـˊ/ʼᐧ;

    iget-object v1, v1, Lـˊ/ʼᐧ;->ʽʽ:Landroid/net/Uri;

    move-wide/from16 v1, p4

    invoke-direct {v0, v1, v2}, Lﹳᵢ/ﹳᐧ;-><init>(J)V

    goto :goto_0

    :goto_1
    iget v3, p1, Lᵔⁱ/ᵔﹳ;->ʽʽ:I

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    iget-object v1, p0, Lˑˆ/ˈ;->ˑٴ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v12, p6

    invoke-virtual/range {v1 .. v12}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ʾᵎ(Lﹳᵢ/ﹳᐧ;IILʽⁱ/ﹳᐧ;ILjava/lang/Object;JJI)V

    return-void
.end method

.method public final ʾˋ()V
    .locals 12

    .prologue
    iget-object v0, p0, Lˑˆ/ˈ;->ـˏ:Lᵔⁱ/ˉʿ;

    invoke-virtual {v0}, Lᵔⁱ/ˉʿ;->ⁱˊ()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v5, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    const-string v0, "The uri must be set."

    iget-object v2, p0, Lˑˆ/ˈ;->ᵎⁱ:Landroid/net/Uri;

    invoke-static {v2, v0}, Lᐧˎ/ﹳٴ;->ˉʿ(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lـˊ/ᵔᵢ;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-direct/range {v1 .. v11}, Lـˊ/ᵔᵢ;-><init>(Landroid/net/Uri;I[BLjava/util/Map;JJLjava/lang/String;I)V

    new-instance v0, Lᵔⁱ/ᵔﹳ;

    iget-object v2, p0, Lˑˆ/ˈ;->ʼˈ:Lـˊ/ﾞᴵ;

    const/4 v3, 0x4

    iget-object v4, p0, Lˑˆ/ˈ;->ˋᵔ:Lᵔⁱ/ʼᐧ;

    invoke-direct {v0, v2, v1, v3, v4}, Lᵔⁱ/ᵔﹳ;-><init>(Lـˊ/ﾞᴵ;Lـˊ/ᵔᵢ;ILᵔⁱ/ʼᐧ;)V

    iget-object v1, p0, Lˑˆ/ˈ;->ـˏ:Lᵔⁱ/ˉʿ;

    iget-object v2, p0, Lˑˆ/ˈ;->ᵔٴ:Lʻᴵ/יـ;

    iget v3, v0, Lᵔⁱ/ᵔﹳ;->ʽʽ:I

    invoke-virtual {v2, v3}, Lʻᴵ/יـ;->ⁱˊ(I)I

    move-result v2

    invoke-virtual {v1, v0, p0, v2}, Lᵔⁱ/ˉʿ;->ﾞᴵ(Lᵔⁱ/ٴﹶ;Lᵔⁱ/ʼˎ;I)V

    return-void
.end method

.method public final ʾᵎ()V
    .locals 4

    .prologue
    iget-boolean v0, p0, Lˑˆ/ˈ;->ˉٴ:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lˑˆ/ˈ;->ˉـ:Lˎˉ/ʽ;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lˑˆ/ˈ;->ˉـ:Lˎˉ/ʽ;

    iput-object v1, p0, Lˑˆ/ˈ;->ʼˈ:Lـˊ/ﾞᴵ;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lˑˆ/ˈ;->ᴵˑ:J

    iget-object v0, p0, Lˑˆ/ˈ;->ـˏ:Lᵔⁱ/ˉʿ;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lᵔⁱ/ˉʿ;->ˑﹳ(Lᵔⁱ/ﾞʻ;)V

    iput-object v1, p0, Lˑˆ/ˈ;->ـˏ:Lᵔⁱ/ˉʿ;

    :cond_1
    iget-object v0, p0, Lˑˆ/ˈ;->ʿ:Landroid/os/Handler;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lˑˆ/ˈ;->ʿ:Landroid/os/Handler;

    :cond_2
    iget-object v0, p0, Lˑˆ/ˈ;->ˆﾞ:Lⁱᴵ/ﾞʻ;

    invoke-interface {v0}, Lⁱᴵ/ﾞʻ;->ﹳٴ()V

    return-void
.end method

.method public final ˈ()V
    .locals 1

    iget-object v0, p0, Lˑˆ/ˈ;->ﹳـ:Lᵔⁱ/ˉˆ;

    invoke-interface {v0}, Lᵔⁱ/ˉˆ;->ʽ()V

    return-void
.end method

.method public final ˏי(Lـˊ/ᵔﹳ;)V
    .locals 2

    .prologue
    iput-object p1, p0, Lˑˆ/ˈ;->ˈⁱ:Lـˊ/ᵔﹳ;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object v0, p0, Lﹳᵢ/ﹳٴ;->ٴᵢ:Lʻʿ/יـ;

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    iget-object v1, p0, Lˑˆ/ˈ;->ˆﾞ:Lⁱᴵ/ﾞʻ;

    invoke-interface {v1, p1, v0}, Lⁱᴵ/ﾞʻ;->ʼˎ(Landroid/os/Looper;Lʻʿ/יـ;)V

    invoke-interface {v1}, Lⁱᴵ/ﾞʻ;->ᵔᵢ()V

    iget-boolean p1, p0, Lˑˆ/ˈ;->ˉٴ:Z

    if-eqz p1, :cond_0

    new-instance p1, Lᵔⁱ/ᵔʾ;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lᵔⁱ/ᵔʾ;-><init>(I)V

    iput-object p1, p0, Lˑˆ/ˈ;->ﹳـ:Lᵔⁱ/ˉˆ;

    invoke-virtual {p0}, Lˑˆ/ˈ;->ᵢˏ()V

    return-void

    :cond_0
    iget-object p1, p0, Lˑˆ/ˈ;->ٴʼ:Lـˊ/ˑﹳ;

    invoke-interface {p1}, Lـˊ/ˑﹳ;->ˆʾ()Lـˊ/ﾞᴵ;

    move-result-object p1

    iput-object p1, p0, Lˑˆ/ˈ;->ʼˈ:Lـˊ/ﾞᴵ;

    new-instance p1, Lᵔⁱ/ˉʿ;

    const-string v0, "SsMediaSource"

    invoke-direct {p1, v0}, Lᵔⁱ/ˉʿ;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lˑˆ/ˈ;->ـˏ:Lᵔⁱ/ˉʿ;

    iput-object p1, p0, Lˑˆ/ˈ;->ﹳـ:Lᵔⁱ/ˉˆ;

    const/4 p1, 0x0

    invoke-static {p1}, Lᐧˎ/ʼʼ;->ʼᐧ(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lˑˆ/ˈ;->ʿ:Landroid/os/Handler;

    invoke-virtual {p0}, Lˑˆ/ˈ;->ʾˋ()V

    return-void
.end method

.method public final ˑﹳ(Lﹳᵢ/ʾᵎ;)V
    .locals 6

    .prologue
    move-object v0, p1

    check-cast v0, Lˑˆ/ʽ;

    iget-object v1, v0, Lˑˆ/ʽ;->ˆﾞ:[Lᵢˋ/ᵔᵢ;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v2, :cond_0

    aget-object v5, v1, v3

    invoke-virtual {v5, v4}, Lᵢˋ/ᵔᵢ;->ʽʽ(Lـᵢ/ⁱˊ;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput-object v4, v0, Lˑˆ/ʽ;->ᵎˊ:Lﹳᵢ/ـˆ;

    iget-object v0, p0, Lˑˆ/ˈ;->ˊˋ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final ـˆ(Lᵔⁱ/ٴﹶ;JJLjava/io/IOException;I)Lʼˊ/ⁱˊ;
    .locals 2

    .prologue
    check-cast p1, Lᵔⁱ/ᵔﹳ;

    new-instance p2, Lﹳᵢ/ﹳᐧ;

    iget-wide v0, p1, Lᵔⁱ/ᵔﹳ;->ʾˋ:J

    iget-object p3, p1, Lᵔⁱ/ᵔﹳ;->ˈٴ:Lـˊ/ʼᐧ;

    iget-object p3, p3, Lـˊ/ʼᐧ;->ʽʽ:Landroid/net/Uri;

    invoke-direct {p2, p4, p5}, Lﹳᵢ/ﹳᐧ;-><init>(J)V

    iget p1, p1, Lᵔⁱ/ᵔﹳ;->ʽʽ:I

    new-instance p3, Lʼٴ/ʾᵎ;

    const/16 p4, 0xb

    invoke-direct {p3, p7, p4, p6}, Lʼٴ/ʾᵎ;-><init>(IILjava/lang/Object;)V

    iget-object p4, p0, Lˑˆ/ˈ;->ᵔٴ:Lʻᴵ/יـ;

    invoke-virtual {p4, p3}, Lʻᴵ/יـ;->ʽ(Lʼٴ/ʾᵎ;)J

    move-result-wide p3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p5, p3, v0

    if-nez p5, :cond_0

    sget-object p3, Lᵔⁱ/ˉʿ;->ˊʻ:Lʼˊ/ⁱˊ;

    goto :goto_0

    :cond_0
    new-instance p5, Lʼˊ/ⁱˊ;

    const/4 p7, 0x0

    const/4 v0, 0x0

    invoke-direct {p5, p3, p4, p7, v0}, Lʼˊ/ⁱˊ;-><init>(JZI)V

    move-object p3, p5

    :goto_0
    invoke-virtual {p3}, Lʼˊ/ⁱˊ;->ﹳٴ()Z

    move-result p4

    xor-int/lit8 p4, p4, 0x1

    iget-object p5, p0, Lˑˆ/ˈ;->ˑٴ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    invoke-virtual {p5, p2, p1, p6, p4}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ʻٴ(Lﹳᵢ/ﹳᐧ;ILjava/io/IOException;Z)V

    return-object p3
.end method

.method public final ᵎﹶ(Lᵔⁱ/ٴﹶ;JJZ)V
    .locals 11

    check-cast p1, Lᵔⁱ/ᵔﹳ;

    new-instance v1, Lﹳᵢ/ﹳᐧ;

    iget-wide p2, p1, Lᵔⁱ/ᵔﹳ;->ʾˋ:J

    iget-object p2, p1, Lᵔⁱ/ᵔﹳ;->ˈٴ:Lـˊ/ʼᐧ;

    iget-object p2, p2, Lـˊ/ʼᐧ;->ʽʽ:Landroid/net/Uri;

    move-wide p2, p4

    invoke-direct {v1, p2, p3}, Lﹳᵢ/ﹳᐧ;-><init>(J)V

    iget-object p2, p0, Lˑˆ/ˈ;->ᵔٴ:Lʻᴵ/יـ;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, p1, Lᵔⁱ/ᵔﹳ;->ʽʽ:I

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    iget-object v0, p0, Lˑˆ/ˈ;->ˑٴ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v10}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ﹳᐧ(Lﹳᵢ/ﹳᐧ;IILʽⁱ/ﹳᐧ;ILjava/lang/Object;JJ)V

    return-void
.end method

.method public final declared-synchronized ᵔʾ(Lʽⁱ/ᴵˊ;)V
    .locals 0

    .prologue
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lˑˆ/ˈ;->ʿᵢ:Lʽⁱ/ᴵˊ;
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
    .locals 29

    .prologue
    move-object/from16 v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, v0, Lˑˆ/ˈ;->ˊˋ:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v2, v4, :cond_4

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lˑˆ/ʽ;

    iget-object v4, v0, Lˑˆ/ˈ;->ˉـ:Lˎˉ/ʽ;

    iput-object v4, v3, Lˑˆ/ʽ;->ᵔי:Lˎˉ/ʽ;

    iget-object v6, v3, Lˑˆ/ʽ;->ˆﾞ:[Lᵢˋ/ᵔᵢ;

    array-length v7, v6

    move v8, v1

    :goto_1
    if-ge v8, v7, :cond_3

    aget-object v9, v6, v8

    iget-object v9, v9, Lᵢˋ/ᵔᵢ;->ᴵᵔ:Lᵢˋ/ʼˎ;

    check-cast v9, Lˑˆ/ⁱˊ;

    iget-object v10, v9, Lˑˆ/ⁱˊ;->ﾞᴵ:Lˎˉ/ʽ;

    iget-object v10, v10, Lˎˉ/ʽ;->ﾞᴵ:[Lˎˉ/ⁱˊ;

    iget v11, v9, Lˑˆ/ⁱˊ;->ⁱˊ:I

    aget-object v10, v10, v11

    iget v12, v10, Lˎˉ/ⁱˊ;->ٴﹶ:I

    iget-object v13, v10, Lˎˉ/ⁱˊ;->ˉˆ:[J

    iget-object v14, v4, Lˎˉ/ʽ;->ﾞᴵ:[Lˎˉ/ⁱˊ;

    aget-object v11, v14, v11

    if-eqz v12, :cond_2

    iget v14, v11, Lˎˉ/ⁱˊ;->ٴﹶ:I

    if-nez v14, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v14, v12, -0x1

    aget-wide v15, v13, v14

    invoke-virtual {v10, v14}, Lˎˉ/ⁱˊ;->ⁱˊ(I)J

    move-result-wide v17

    add-long v17, v17, v15

    iget-object v10, v11, Lˎˉ/ⁱˊ;->ˉˆ:[J

    aget-wide v14, v10, v1

    cmp-long v10, v17, v14

    if-gtz v10, :cond_1

    iget v10, v9, Lˑˆ/ⁱˊ;->ᵎﹶ:I

    add-int/2addr v10, v12

    iput v10, v9, Lˑˆ/ⁱˊ;->ᵎﹶ:I

    goto :goto_3

    :cond_1
    iget v10, v9, Lˑˆ/ⁱˊ;->ᵎﹶ:I

    invoke-static {v13, v14, v15, v5}, Lᐧˎ/ʼʼ;->ˑﹳ([JJZ)I

    move-result v11

    add-int/2addr v11, v10

    iput v11, v9, Lˑˆ/ⁱˊ;->ᵎﹶ:I

    goto :goto_3

    :cond_2
    :goto_2
    iget v10, v9, Lˑˆ/ⁱˊ;->ᵎﹶ:I

    add-int/2addr v10, v12

    iput v10, v9, Lˑˆ/ⁱˊ;->ᵎﹶ:I

    :goto_3
    iput-object v4, v9, Lˑˆ/ⁱˊ;->ﾞᴵ:Lˎˉ/ʽ;

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    iget-object v4, v3, Lˑˆ/ʽ;->ᵎˊ:Lﹳᵢ/ـˆ;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v4, v3}, Lﹳᵢ/ʿ;->ﾞᴵ(Lﹳᵢ/ʿᵢ;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iget-object v2, v0, Lˑˆ/ˈ;->ˉـ:Lˎˉ/ʽ;

    iget-object v2, v2, Lˎˉ/ʽ;->ﾞᴵ:[Lˎˉ/ⁱˊ;

    array-length v3, v2

    const-wide v6, 0x7fffffffffffffffL

    const-wide/high16 v8, -0x8000000000000000L

    move v4, v1

    move-wide v10, v6

    :goto_4
    if-ge v4, v3, :cond_6

    aget-object v12, v2, v4

    iget v13, v12, Lˎˉ/ⁱˊ;->ٴﹶ:I

    iget-object v14, v12, Lˎˉ/ⁱˊ;->ˉˆ:[J

    if-lez v13, :cond_5

    move v13, v1

    move-object v15, v2

    aget-wide v1, v14, v13

    invoke-static {v10, v11, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    iget v1, v12, Lˎˉ/ⁱˊ;->ٴﹶ:I

    sub-int/2addr v1, v5

    aget-wide v16, v14, v1

    invoke-virtual {v12, v1}, Lˎˉ/ⁱˊ;->ⁱˊ(I)J

    move-result-wide v1

    add-long v1, v1, v16

    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    move-wide v8, v1

    goto :goto_5

    :cond_5
    move v13, v1

    move-object v15, v2

    :goto_5
    add-int/lit8 v4, v4, 0x1

    move v1, v13

    move-object v2, v15

    goto :goto_4

    :cond_6
    cmp-long v1, v10, v6

    const-wide/16 v2, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v1, :cond_8

    iget-object v1, v0, Lˑˆ/ˈ;->ˉـ:Lˎˉ/ʽ;

    iget-boolean v1, v1, Lˎˉ/ʽ;->ˈ:Z

    if-eqz v1, :cond_7

    move-wide v7, v4

    goto :goto_6

    :cond_7
    move-wide v7, v2

    :goto_6
    new-instance v6, Lﹳᵢ/ᐧﾞ;

    iget-object v1, v0, Lˑˆ/ˈ;->ˉـ:Lˎˉ/ʽ;

    iget-boolean v2, v1, Lˎˉ/ʽ;->ˈ:Z

    invoke-virtual {v0}, Lˑˆ/ˈ;->ﹳٴ()Lʽⁱ/ᴵˊ;

    move-result-object v19

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x1

    move/from16 v17, v2

    move-object/from16 v18, v1

    move/from16 v16, v2

    invoke-direct/range {v6 .. v19}, Lﹳᵢ/ᐧﾞ;-><init>(JJJJZZZLjava/lang/Object;Lʽⁱ/ᴵˊ;)V

    goto/16 :goto_9

    :cond_8
    iget-object v1, v0, Lˑˆ/ˈ;->ˉـ:Lˎˉ/ʽ;

    iget-boolean v6, v1, Lˎˉ/ʽ;->ˈ:Z

    if-eqz v6, :cond_b

    iget-wide v6, v1, Lˎˉ/ʽ;->ᵔᵢ:J

    cmp-long v1, v6, v4

    if-eqz v1, :cond_9

    cmp-long v1, v6, v2

    if-lez v1, :cond_9

    sub-long v1, v8, v6

    invoke-static {v10, v11, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    :cond_9
    move-wide/from16 v17, v10

    sub-long v15, v8, v17

    iget-wide v1, v0, Lˑˆ/ˈ;->ˈʿ:J

    invoke-static {v1, v2}, Lᐧˎ/ʼʼ;->ʼˈ(J)J

    move-result-wide v1

    sub-long v1, v15, v1

    const-wide/32 v3, 0x4c4b40

    cmp-long v5, v1, v3

    if-gez v5, :cond_a

    const-wide/16 v1, 0x2

    div-long v1, v15, v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    :cond_a
    move-wide/from16 v19, v1

    new-instance v12, Lﹳᵢ/ᐧﾞ;

    iget-object v1, v0, Lˑˆ/ˈ;->ˉـ:Lˎˉ/ʽ;

    invoke-virtual {v0}, Lˑˆ/ˈ;->ﹳٴ()Lʽⁱ/ᴵˊ;

    move-result-object v25

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v23, 0x1

    move-object/from16 v24, v1

    invoke-direct/range {v12 .. v25}, Lﹳᵢ/ᐧﾞ;-><init>(JJJJZZZLjava/lang/Object;Lʽⁱ/ᴵˊ;)V

    move-object v6, v12

    goto :goto_9

    :cond_b
    iget-wide v1, v1, Lˎˉ/ʽ;->ᵎﹶ:J

    cmp-long v3, v1, v4

    if-eqz v3, :cond_c

    :goto_7
    move-wide/from16 v17, v1

    move-wide/from16 v19, v10

    goto :goto_8

    :cond_c
    sub-long v1, v8, v10

    goto :goto_7

    :goto_8
    new-instance v10, Lﹳᵢ/ᐧﾞ;

    add-long v15, v19, v17

    iget-object v1, v0, Lˑˆ/ˈ;->ˉـ:Lˎˉ/ʽ;

    invoke-virtual {v0}, Lˑˆ/ˈ;->ﹳٴ()Lʽⁱ/ᴵˊ;

    move-result-object v27

    const/16 v25, 0x0

    const/16 v28, 0x0

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v21, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x0

    move-object/from16 v26, v1

    invoke-direct/range {v10 .. v28}, Lﹳᵢ/ᐧﾞ;-><init>(JJJJJJZZZLjava/lang/Object;Lʽⁱ/ᴵˊ;Lʽⁱ/ʾᵎ;)V

    move-object v6, v10

    :goto_9
    invoke-virtual {v0, v6}, Lﹳᵢ/ﹳٴ;->ʻٴ(Lʽⁱ/ʼˈ;)V

    return-void
.end method

.method public final ⁱˊ(Lﹳᵢ/ᵢˏ;Lᵔⁱ/ˑﹳ;J)Lﹳᵢ/ʾᵎ;
    .locals 11

    invoke-virtual {p0, p1}, Lﹳᵢ/ﹳٴ;->ᵔﹳ(Lﹳᵢ/ᵢˏ;)Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    move-result-object v8

    new-instance v6, Lⁱᴵ/ʼˎ;

    iget-object p3, p0, Lﹳᵢ/ﹳٴ;->ˈٴ:Lⁱᴵ/ʼˎ;

    iget-object p3, p3, Lⁱᴵ/ʼˎ;->ʽ:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 p4, 0x0

    invoke-direct {v6, p3, p4, p1}, Lⁱᴵ/ʼˎ;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILﹳᵢ/ᵢˏ;)V

    new-instance v0, Lˑˆ/ʽ;

    iget-object v1, p0, Lˑˆ/ˈ;->ˉـ:Lˎˉ/ʽ;

    iget-object v3, p0, Lˑˆ/ˈ;->ˈⁱ:Lـˊ/ᵔﹳ;

    iget-object v7, p0, Lˑˆ/ˈ;->ᵔٴ:Lʻᴵ/יـ;

    iget-object v9, p0, Lˑˆ/ˈ;->ﹳـ:Lᵔⁱ/ˉˆ;

    iget-object v2, p0, Lˑˆ/ˈ;->ᵎˊ:Lٴʽ/יـ;

    iget-object v4, p0, Lˑˆ/ˈ;->ᵔי:Lᵔﹶ/ˈٴ;

    iget-object v5, p0, Lˑˆ/ˈ;->ˆﾞ:Lⁱᴵ/ﾞʻ;

    move-object v10, p2

    invoke-direct/range {v0 .. v10}, Lˑˆ/ʽ;-><init>(Lˎˉ/ʽ;Lٴʽ/יـ;Lـˊ/ᵔﹳ;Lᵔﹶ/ˈٴ;Lⁱᴵ/ﾞʻ;Lⁱᴵ/ʼˎ;Lʻᴵ/יـ;Lcom/google/android/gms/internal/play_billing/ʽﹳ;Lᵔⁱ/ˉˆ;Lᵔⁱ/ˑﹳ;)V

    iget-object p1, p0, Lˑˆ/ˈ;->ˊˋ:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final declared-synchronized ﹳٴ()Lʽⁱ/ᴵˊ;
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lˑˆ/ˈ;->ʿᵢ:Lʽⁱ/ᴵˊ;
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
