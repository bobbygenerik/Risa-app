.class public final Lˉˆ/ˎـ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:Ljava/lang/Object;

.field public ˈ:Ljava/lang/Object;

.field public ˑﹳ:Ljava/lang/Object;

.field public ᵎﹶ:Ljava/lang/Object;

.field public ⁱˊ:Ljava/lang/Object;

.field public final ﹳٴ:Ljava/lang/Object;

.field public ﾞᴵ:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lˉˆ/ˎـ;->ﹳٴ:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lˉˆ/ˎـ;->ⁱˊ:Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x10

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v1, p0, Lˉˆ/ˎـ;->ʽ:Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2, v3}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v1, p0, Lˉˆ/ˎـ;->ˈ:Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2, v3}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v1, p0, Lˉˆ/ˎـ;->ˑﹳ:Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2, v3}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v1, p0, Lˉˆ/ˎـ;->ﾞᴵ:Ljava/lang/Object;

    iput-object v0, p0, Lˉˆ/ˎـ;->ᵎﹶ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lˉˆ/ˎـ;->ˈ:Ljava/lang/Object;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lˉˆ/ˎـ;->ˑﹳ:Ljava/lang/Object;

    const/4 v1, 0x2

    new-array v2, v1, [I

    iput-object v2, p0, Lˉˆ/ˎـ;->ﾞᴵ:Ljava/lang/Object;

    new-array v1, v1, [I

    iput-object v1, p0, Lˉˆ/ˎـ;->ᵎﹶ:Ljava/lang/Object;

    iput-object p1, p0, Lˉˆ/ˎـ;->ﹳٴ:Ljava/lang/Object;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e001b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lˉˆ/ˎـ;->ⁱˊ:Ljava/lang/Object;

    const v2, 0x7f0b028e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lˉˆ/ˎـ;->ʽ:Ljava/lang/Object;

    const-class v1, Lˉˆ/ˎـ;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const/16 p1, 0x3ea

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 p1, -0x2

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 p1, -0x3

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const p1, 0x7f140004

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/16 p1, 0x18

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lᴵˋ/ⁱˊ;Lᐧᵎ/ᵢי;Lᵔʼ/ﹳٴ;Landroidx/work/impl/WorkDatabase;Lˑᵎ/ﹳᐧ;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lˉˆ/ˎـ;->ⁱˊ:Ljava/lang/Object;

    iput-object p3, p0, Lˉˆ/ˎـ;->ʽ:Ljava/lang/Object;

    iput-object p4, p0, Lˉˆ/ˎـ;->ˈ:Ljava/lang/Object;

    iput-object p5, p0, Lˉˆ/ˎـ;->ˑﹳ:Ljava/lang/Object;

    iput-object p6, p0, Lˉˆ/ˎـ;->ﾞᴵ:Ljava/lang/Object;

    iput-object p7, p0, Lˉˆ/ˎـ;->ᵎﹶ:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lˉˆ/ˎـ;->ﹳٴ:Ljava/lang/Object;

    new-instance p1, Lᴵˋ/ˆʾ;

    invoke-direct {p1}, Lᴵˋ/ˆʾ;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lˑˋ/ˈ;Lˈᵔ/ˈ;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bumptech/glide/ʼˎ;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bumptech/glide/ʼˎ;-><init>(Lˉˆ/ˎـ;Z)V

    iput-object v0, p0, Lˉˆ/ˎـ;->ˈ:Ljava/lang/Object;

    new-instance v0, Lcom/bumptech/glide/ʼˎ;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lcom/bumptech/glide/ʼˎ;-><init>(Lˉˆ/ˎـ;Z)V

    iput-object v0, p0, Lˉˆ/ˎـ;->ˑﹳ:Ljava/lang/Object;

    new-instance v0, Lʽᴵ/ʾᵎ;

    invoke-direct {v0, v2}, Lʽᴵ/ʾᵎ;-><init>(I)V

    iput-object v0, p0, Lˉˆ/ˎـ;->ﾞᴵ:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicMarkableReference;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicMarkableReference;-><init>(Ljava/lang/Object;Z)V

    iput-object v0, p0, Lˉˆ/ˎـ;->ᵎﹶ:Ljava/lang/Object;

    iput-object p1, p0, Lˉˆ/ˎـ;->ʽ:Ljava/lang/Object;

    new-instance p1, Lˆי/ᵎﹶ;

    invoke-direct {p1, p2}, Lˆי/ᵎﹶ;-><init>(Lˑˋ/ˈ;)V

    iput-object p1, p0, Lˉˆ/ˎـ;->ﹳٴ:Ljava/lang/Object;

    iput-object p3, p0, Lˉˆ/ˎـ;->ⁱˊ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lﾞʿ/ʽ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˉˆ/ˎـ;->ﹳٴ:Ljava/lang/Object;

    sget-object p1, Lᵔᐧ/ﾞʻ;->ﹳٴ:Lᵔᐧ/ٴﹶ;

    iput-object p1, p0, Lˉˆ/ˎـ;->ﾞᴵ:Ljava/lang/Object;

    sget-object p1, Lᵔᐧ/ﹳٴ;->ﹳٴ:Lᵔᐧ/ﹳٴ;

    iput-object p1, p0, Lˉˆ/ˎـ;->ᵎﹶ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public ﹳٴ(Ljava/lang/String;)V
    .locals 3

    .prologue
    iget-object v0, p0, Lˉˆ/ˎـ;->ˑﹳ:Ljava/lang/Object;

    check-cast v0, Lcom/bumptech/glide/ʼˎ;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lcom/bumptech/glide/ʼˎ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lˆי/ˈ;

    invoke-virtual {v1, p1}, Lˆי/ˈ;->ʽ(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object p1, v0, Lcom/bumptech/glide/ʼˎ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lˆי/ˈ;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->set(Ljava/lang/Object;Z)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p1, Landroidx/lifecycle/ᵎⁱ;

    const/16 v1, 0x10

    invoke-direct {p1, v1, v0}, Landroidx/lifecycle/ᵎⁱ;-><init>(ILjava/lang/Object;)V

    iget-object v1, v0, Lcom/bumptech/glide/ʼˎ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, v0, Lcom/bumptech/glide/ʼˎ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Lˉˆ/ˎـ;

    iget-object v0, v0, Lˉˆ/ˎـ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lˈᵔ/ˈ;

    iget-object v0, v0, Lˈᵔ/ˈ;->ⁱˊ:Lˈᵔ/ʽ;

    invoke-virtual {v0, p1}, Lˈᵔ/ʽ;->ﹳٴ(Ljava/lang/Runnable;)Lˏـ/ˉʿ;

    return-void

    :cond_2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
