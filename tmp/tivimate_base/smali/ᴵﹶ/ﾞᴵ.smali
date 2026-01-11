.class public final Lᴵﹶ/ﾞᴵ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʼˎ:Lᴵﹶ/ˈ;

.field public ʼᐧ:I

.field public final ʽ:Ljava/util/ArrayList;

.field public ˆʾ:Z

.field public final ˈ:Lcom/bumptech/glide/ᵔʾ;

.field public ˉʿ:Lᴵﹶ/ˈ;

.field public ˉˆ:I

.field public final ˑﹳ:Lיᐧ/ﹳٴ;

.field public ٴﹶ:Lᴵﹶ/ˈ;

.field public ᵎﹶ:Z

.field public ᵔʾ:I

.field public ᵔᵢ:Lcom/bumptech/glide/ٴﹶ;

.field public final ⁱˊ:Landroid/os/Handler;

.field public final ﹳٴ:Lᵢٴ/ˈ;

.field public ﾞʻ:Landroid/graphics/Bitmap;

.field public ﾞᴵ:Z


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/ⁱˊ;Lᵢٴ/ˈ;IILandroid/graphics/Bitmap;)V
    .locals 6

    iget-object v0, p1, Lcom/bumptech/glide/ⁱˊ;->ᴵˊ:Lיᐧ/ﹳٴ;

    iget-object p1, p1, Lcom/bumptech/glide/ⁱˊ;->ˈٴ:Lcom/bumptech/glide/ˑﹳ;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed)."

    invoke-static {v1, v2}, Lʿٴ/ﾞᴵ;->ʽ(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/bumptech/glide/ⁱˊ;->ⁱˊ(Landroid/content/Context;)Lcom/bumptech/glide/ⁱˊ;

    move-result-object v3

    iget-object v3, v3, Lcom/bumptech/glide/ⁱˊ;->ˊʻ:Lٴʽ/ﾞʻ;

    invoke-virtual {v3, v1}, Lٴʽ/ﾞʻ;->ⁱˊ(Landroid/content/Context;)Lcom/bumptech/glide/ᵔʾ;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Lʿٴ/ﾞᴵ;->ʽ(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/bumptech/glide/ⁱˊ;->ⁱˊ(Landroid/content/Context;)Lcom/bumptech/glide/ⁱˊ;

    move-result-object v2

    iget-object v2, v2, Lcom/bumptech/glide/ⁱˊ;->ˊʻ:Lٴʽ/ﾞʻ;

    invoke-virtual {v2, p1}, Lٴʽ/ﾞʻ;->ⁱˊ(Landroid/content/Context;)Lcom/bumptech/glide/ᵔʾ;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/bumptech/glide/ٴﹶ;

    iget-object v3, p1, Lcom/bumptech/glide/ᵔʾ;->ʾˋ:Lcom/bumptech/glide/ⁱˊ;

    iget-object v4, p1, Lcom/bumptech/glide/ᵔʾ;->ᴵˊ:Landroid/content/Context;

    const-class v5, Landroid/graphics/Bitmap;

    invoke-direct {v2, v3, p1, v5, v4}, Lcom/bumptech/glide/ٴﹶ;-><init>(Lcom/bumptech/glide/ⁱˊ;Lcom/bumptech/glide/ᵔʾ;Ljava/lang/Class;Landroid/content/Context;)V

    sget-object p1, Lcom/bumptech/glide/ᵔʾ;->ᵎˊ:Lⁱⁱ/ﾞᴵ;

    invoke-virtual {v2, p1}, Lcom/bumptech/glide/ٴﹶ;->ʾᵎ(Lⁱⁱ/ﹳٴ;)Lcom/bumptech/glide/ٴﹶ;

    move-result-object p1

    new-instance v2, Lⁱⁱ/ﾞᴵ;

    invoke-direct {v2}, Lⁱⁱ/ﹳٴ;-><init>()V

    sget-object v3, Lʿʾ/ﾞʻ;->ⁱˊ:Lʿʾ/ﾞʻ;

    invoke-virtual {v2, v3}, Lⁱⁱ/ﹳٴ;->ˑﹳ(Lʿʾ/ﾞʻ;)Lⁱⁱ/ﹳٴ;

    move-result-object v2

    check-cast v2, Lⁱⁱ/ﾞᴵ;

    invoke-virtual {v2}, Lⁱⁱ/ﹳٴ;->ʻٴ()Lⁱⁱ/ﹳٴ;

    move-result-object v2

    check-cast v2, Lⁱⁱ/ﾞᴵ;

    invoke-virtual {v2}, Lⁱⁱ/ﹳٴ;->יـ()Lⁱⁱ/ﹳٴ;

    move-result-object v2

    check-cast v2, Lⁱⁱ/ﾞᴵ;

    invoke-virtual {v2, p3, p4}, Lⁱⁱ/ﹳٴ;->ٴﹶ(II)Lⁱⁱ/ﹳٴ;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/bumptech/glide/ٴﹶ;->ʾᵎ(Lⁱⁱ/ﹳٴ;)Lcom/bumptech/glide/ٴﹶ;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lᴵﹶ/ﾞᴵ;->ʽ:Ljava/util/ArrayList;

    iput-object v1, p0, Lᴵﹶ/ﾞᴵ;->ˈ:Lcom/bumptech/glide/ᵔʾ;

    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    new-instance v1, Lٴﾞ/ᴵᵔ;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Lٴﾞ/ᴵᵔ;-><init>(ILjava/lang/Object;)V

    invoke-direct {p3, p4, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lᴵﹶ/ﾞᴵ;->ˑﹳ:Lיᐧ/ﹳٴ;

    iput-object p3, p0, Lᴵﹶ/ﾞᴵ;->ⁱˊ:Landroid/os/Handler;

    iput-object p1, p0, Lᴵﹶ/ﾞᴵ;->ᵔᵢ:Lcom/bumptech/glide/ٴﹶ;

    iput-object p2, p0, Lᴵﹶ/ﾞᴵ;->ﹳٴ:Lᵢٴ/ˈ;

    sget-object p1, Lⁱˆ/ʽ;->ⁱˊ:Lⁱˆ/ʽ;

    invoke-virtual {p0, p1, p5}, Lᴵﹶ/ﾞᴵ;->ʽ(Lʼᵔ/ﾞʻ;Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public final ʽ(Lʼᵔ/ﾞʻ;Landroid/graphics/Bitmap;)V
    .locals 3

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Lʿٴ/ﾞᴵ;->ʽ(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lʿٴ/ﾞᴵ;->ʽ(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lᴵﹶ/ﾞᴵ;->ﾞʻ:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lᴵﹶ/ﾞᴵ;->ᵔᵢ:Lcom/bumptech/glide/ٴﹶ;

    new-instance v1, Lⁱⁱ/ﾞᴵ;

    invoke-direct {v1}, Lⁱⁱ/ﹳٴ;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lⁱⁱ/ﹳٴ;->ʽﹳ(Lʼᵔ/ﾞʻ;Z)Lⁱⁱ/ﹳٴ;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/ٴﹶ;->ʾᵎ(Lⁱⁱ/ﹳٴ;)Lcom/bumptech/glide/ٴﹶ;

    move-result-object p1

    iput-object p1, p0, Lᴵﹶ/ﾞᴵ;->ᵔᵢ:Lcom/bumptech/glide/ٴﹶ;

    invoke-static {p2}, Lʿٴ/ᵔʾ;->ʽ(Landroid/graphics/Bitmap;)I

    move-result p1

    iput p1, p0, Lᴵﹶ/ﾞᴵ;->ᵔʾ:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lᴵﹶ/ﾞᴵ;->ˉˆ:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lᴵﹶ/ﾞᴵ;->ʼᐧ:I

    return-void
.end method

.method public final ⁱˊ(Lᴵﹶ/ˈ;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lᴵﹶ/ﾞᴵ;->ᵎﹶ:Z

    iget-boolean v0, p0, Lᴵﹶ/ﾞᴵ;->ˆʾ:Z

    const/4 v1, 0x2

    iget-object v2, p0, Lᴵﹶ/ﾞᴵ;->ⁱˊ:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {v2, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    iget-boolean v0, p0, Lᴵﹶ/ﾞᴵ;->ﾞᴵ:Z

    if-nez v0, :cond_1

    iput-object p1, p0, Lᴵﹶ/ﾞᴵ;->ˉʿ:Lᴵﹶ/ˈ;

    return-void

    :cond_1
    iget-object v0, p1, Lᴵﹶ/ˈ;->ٴᵢ:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lᴵﹶ/ﾞᴵ;->ﾞʻ:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lᴵﹶ/ﾞᴵ;->ˑﹳ:Lיᐧ/ﹳٴ;

    invoke-interface {v3, v0}, Lיᐧ/ﹳٴ;->ٴﹶ(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lᴵﹶ/ﾞᴵ;->ﾞʻ:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v0, p0, Lᴵﹶ/ﾞᴵ;->ʼˎ:Lᴵﹶ/ˈ;

    iput-object p1, p0, Lᴵﹶ/ﾞᴵ;->ʼˎ:Lᴵﹶ/ˈ;

    iget-object p1, p0, Lᴵﹶ/ﾞᴵ;->ʽ:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_8

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lᴵﹶ/ˑﹳ;

    check-cast v4, Lᴵﹶ/ⁱˊ;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v5

    :goto_1
    instance-of v6, v5, Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_3

    check-cast v5, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v5

    goto :goto_1

    :cond_3
    if-nez v5, :cond_4

    invoke-virtual {v4}, Lᴵﹶ/ⁱˊ;->stop()V

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_3

    :cond_4
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    iget-object v5, v4, Lᴵﹶ/ⁱˊ;->ʾˋ:Lʻˈ/ˑﹳ;

    iget-object v5, v5, Lʻˈ/ˑﹳ;->ⁱˊ:Ljava/lang/Object;

    check-cast v5, Lᴵﹶ/ﾞᴵ;

    iget-object v6, v5, Lᴵﹶ/ﾞᴵ;->ʼˎ:Lᴵﹶ/ˈ;

    const/4 v7, -0x1

    if-eqz v6, :cond_5

    iget v6, v6, Lᴵﹶ/ˈ;->ᴵᵔ:I

    goto :goto_2

    :cond_5
    move v6, v7

    :goto_2
    iget-object v5, v5, Lᴵﹶ/ﾞᴵ;->ﹳٴ:Lᵢٴ/ˈ;

    iget-object v5, v5, Lᵢٴ/ˈ;->ﾞʻ:Lᵢٴ/ⁱˊ;

    iget v5, v5, Lᵢٴ/ⁱˊ;->ʽ:I

    add-int/lit8 v5, v5, -0x1

    if-ne v6, v5, :cond_6

    iget v5, v4, Lᴵﹶ/ⁱˊ;->ˊʻ:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lᴵﹶ/ⁱˊ;->ˊʻ:I

    :cond_6
    iget v5, v4, Lᴵﹶ/ⁱˊ;->ٴᵢ:I

    if-eq v5, v7, :cond_7

    iget v6, v4, Lᴵﹶ/ⁱˊ;->ˊʻ:I

    if-lt v6, v5, :cond_7

    invoke-virtual {v4}, Lᴵﹶ/ⁱˊ;->stop()V

    :cond_7
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_8
    if-eqz v0, :cond_9

    invoke-virtual {v2, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_9
    invoke-virtual {p0}, Lᴵﹶ/ﾞᴵ;->ﹳٴ()V

    return-void
.end method

.method public final ﹳٴ()V
    .locals 7

    .prologue
    iget-boolean v0, p0, Lᴵﹶ/ﾞᴵ;->ﾞᴵ:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lᴵﹶ/ﾞᴵ;->ᵎﹶ:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lᴵﹶ/ﾞᴵ;->ˉʿ:Lᴵﹶ/ˈ;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lᴵﹶ/ﾞᴵ;->ˉʿ:Lᴵﹶ/ˈ;

    invoke-virtual {p0, v0}, Lᴵﹶ/ﾞᴵ;->ⁱˊ(Lᴵﹶ/ˈ;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lᴵﹶ/ﾞᴵ;->ᵎﹶ:Z

    iget-object v1, p0, Lᴵﹶ/ﾞᴵ;->ﹳٴ:Lᵢٴ/ˈ;

    iget-object v2, v1, Lᵢٴ/ˈ;->ﾞʻ:Lᵢٴ/ⁱˊ;

    iget v3, v2, Lᵢٴ/ⁱˊ;->ʽ:I

    if-lez v3, :cond_4

    iget v4, v1, Lᵢٴ/ˈ;->ٴﹶ:I

    if-gez v4, :cond_2

    goto :goto_0

    :cond_2
    if-ltz v4, :cond_3

    if-ge v4, v3, :cond_3

    iget-object v2, v2, Lᵢٴ/ⁱˊ;->ˑﹳ:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lᵢٴ/ﹳٴ;

    iget v2, v2, Lᵢٴ/ﹳٴ;->ʼˎ:I

    goto :goto_1

    :cond_3
    const/4 v2, -0x1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v2, 0x0

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    int-to-long v5, v2

    add-long/2addr v3, v5

    iget v2, v1, Lᵢٴ/ˈ;->ٴﹶ:I

    add-int/2addr v2, v0

    iget-object v0, v1, Lᵢٴ/ˈ;->ﾞʻ:Lᵢٴ/ⁱˊ;

    iget v0, v0, Lᵢٴ/ⁱˊ;->ʽ:I

    rem-int/2addr v2, v0

    iput v2, v1, Lᵢٴ/ˈ;->ٴﹶ:I

    new-instance v0, Lᴵﹶ/ˈ;

    iget-object v5, p0, Lᴵﹶ/ﾞᴵ;->ⁱˊ:Landroid/os/Handler;

    invoke-direct {v0, v5, v2, v3, v4}, Lᴵﹶ/ˈ;-><init>(Landroid/os/Handler;IJ)V

    iput-object v0, p0, Lᴵﹶ/ﾞᴵ;->ٴﹶ:Lᴵﹶ/ˈ;

    iget-object v0, p0, Lᴵﹶ/ﾞᴵ;->ᵔᵢ:Lcom/bumptech/glide/ٴﹶ;

    new-instance v2, Lˋᵎ/ⁱˊ;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {v2, v3}, Lˋᵎ/ⁱˊ;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lⁱⁱ/ﾞᴵ;

    invoke-direct {v3}, Lⁱⁱ/ﹳٴ;-><init>()V

    invoke-virtual {v3, v2}, Lⁱⁱ/ﹳٴ;->ᵔﹳ(Lˋᵎ/ⁱˊ;)Lⁱⁱ/ﹳٴ;

    move-result-object v2

    check-cast v2, Lⁱⁱ/ﾞᴵ;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/ٴﹶ;->ʾᵎ(Lⁱⁱ/ﹳٴ;)Lcom/bumptech/glide/ٴﹶ;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/ٴﹶ;->ᴵᵔ(Ljava/lang/Object;)Lcom/bumptech/glide/ٴﹶ;

    move-result-object v0

    iget-object v1, p0, Lᴵﹶ/ﾞᴵ;->ٴﹶ:Lᴵﹶ/ˈ;

    invoke-virtual {v0, v1, v0}, Lcom/bumptech/glide/ٴﹶ;->ʽʽ(Lʾˎ/ˑﹳ;Lⁱⁱ/ﹳٴ;)V

    :cond_5
    :goto_2
    return-void
.end method
