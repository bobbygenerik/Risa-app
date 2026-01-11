.class public final Lᵔᵢ/ᵎⁱ;
.super Lcom/google/android/gms/internal/measurement/ˏʻ;
.source "SourceFile"

# interfaces
.implements Lˉˆ/ʽ;


# static fields
.field public static final ˊʻ:Landroid/view/animation/DecelerateInterpolator;

.field public static final ᴵᵔ:Landroid/view/animation/AccelerateInterpolator;


# instance fields
.field public ʻٴ:Z

.field public ʼʼ:Lˉʿ/ˆʾ;

.field public ʼˎ:Landroidx/appcompat/widget/ActionBarOverlayLayout;

.field public ʼᐧ:Lᵔᵢ/ˉٴ;

.field public final ʽʽ:Lᵔᵢ/ٴᵢ;

.field public ʽﹳ:Z

.field public ʾˋ:Z

.field public ʾᵎ:Z

.field public ˆʾ:Landroidx/appcompat/widget/ActionBarContainer;

.field public final ˈٴ:Lᐧﹳ/ʽ;

.field public final ˉʿ:Landroid/view/View;

.field public ˉˆ:Lᵔᵢ/ˉٴ;

.field public ˏי:I

.field public final יـ:Ljava/util/ArrayList;

.field public ـˆ:Z

.field public ٴﹶ:Lˉˆ/ﹳﹳ;

.field public final ᴵˊ:Lᵔᵢ/ٴᵢ;

.field public ᵎﹶ:Landroid/content/Context;

.field public ᵔʾ:Z

.field public ᵔᵢ:Landroid/content/Context;

.field public ᵔﹳ:Lˑʼ/ᵎˊ;

.field public ᵢˏ:Z

.field public ﹳᐧ:Z

.field public ﾞʻ:Landroidx/appcompat/widget/ActionBarContextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lᵔᵢ/ᵎⁱ;->ᴵᵔ:Landroid/view/animation/AccelerateInterpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lᵔᵢ/ᵎⁱ;->ˊʻ:Landroid/view/animation/DecelerateInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lᵔᵢ/ᵎⁱ;->יـ:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lᵔᵢ/ᵎⁱ;->ˏי:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lᵔᵢ/ᵎⁱ;->ʽﹳ:Z

    iput-boolean v0, p0, Lᵔᵢ/ᵎⁱ;->ʾᵎ:Z

    new-instance v0, Lᵔᵢ/ٴᵢ;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lᵔᵢ/ٴᵢ;-><init>(Lᵔᵢ/ᵎⁱ;I)V

    iput-object v0, p0, Lᵔᵢ/ᵎⁱ;->ᴵˊ:Lᵔᵢ/ٴᵢ;

    new-instance v0, Lᵔᵢ/ٴᵢ;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lᵔᵢ/ٴᵢ;-><init>(Lᵔᵢ/ᵎⁱ;I)V

    iput-object v0, p0, Lᵔᵢ/ᵎⁱ;->ʽʽ:Lᵔᵢ/ٴᵢ;

    new-instance v0, Lᐧﹳ/ʽ;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, Lᐧﹳ/ʽ;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lᵔᵢ/ᵎⁱ;->ˈٴ:Lᐧﹳ/ʽ;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lᵔᵢ/ᵎⁱ;->ᐧﾞ(Landroid/view/View;)V

    if-nez p2, :cond_0

    const p2, 0x1020002

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lᵔᵢ/ᵎⁱ;->ˉʿ:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lᵔᵢ/ᵎⁱ;->יـ:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lᵔᵢ/ᵎⁱ;->ˏי:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lᵔᵢ/ᵎⁱ;->ʽﹳ:Z

    iput-boolean v0, p0, Lᵔᵢ/ᵎⁱ;->ʾᵎ:Z

    new-instance v0, Lᵔᵢ/ٴᵢ;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lᵔᵢ/ٴᵢ;-><init>(Lᵔᵢ/ᵎⁱ;I)V

    iput-object v0, p0, Lᵔᵢ/ᵎⁱ;->ᴵˊ:Lᵔᵢ/ٴᵢ;

    new-instance v0, Lᵔᵢ/ٴᵢ;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lᵔᵢ/ٴᵢ;-><init>(Lᵔᵢ/ᵎⁱ;I)V

    iput-object v0, p0, Lᵔᵢ/ᵎⁱ;->ʽʽ:Lᵔᵢ/ٴᵢ;

    new-instance v0, Lᐧﹳ/ʽ;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, Lᐧﹳ/ʽ;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lᵔᵢ/ᵎⁱ;->ˈٴ:Lᐧﹳ/ʽ;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lᵔᵢ/ᵎⁱ;->ᐧﾞ(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final ʿᵢ(Z)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lᵔᵢ/ᵎⁱ;->ـˆ:Z

    if-nez v1, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lᵔᵢ/ᵎⁱ;->ـˆ:Z

    iget-object v2, p0, Lᵔᵢ/ᵎⁱ;->ʼˎ:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    :cond_0
    invoke-virtual {p0, v0}, Lᵔᵢ/ᵎⁱ;->ᴵʼ(Z)V

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lᵔᵢ/ᵎⁱ;->ـˆ:Z

    if-eqz v1, :cond_3

    iput-boolean v0, p0, Lᵔᵢ/ᵎⁱ;->ـˆ:Z

    iget-object v1, p0, Lᵔᵢ/ᵎⁱ;->ʼˎ:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    :cond_2
    invoke-virtual {p0, v0}, Lᵔᵢ/ᵎⁱ;->ᴵʼ(Z)V

    :cond_3
    :goto_0
    iget-object v1, p0, Lᵔᵢ/ᵎⁱ;->ˆʾ:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v1}, Landroid/view/View;->isLaidOut()Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x4

    if-eqz v1, :cond_7

    const-wide/16 v4, 0xc8

    const-wide/16 v6, 0x64

    if-eqz p1, :cond_4

    iget-object p1, p0, Lᵔᵢ/ᵎⁱ;->ٴﹶ:Lˉˆ/ﹳﹳ;

    check-cast p1, Lˉˆ/ˏⁱ;

    iget-object v1, p1, Lˉˆ/ˏⁱ;->ﹳٴ:Landroidx/appcompat/widget/Toolbar;

    invoke-static {v1}, Lˋᵔ/ᵎˊ;->ﹳٴ(Landroid/view/View;)Lˋᵔ/ˋᵔ;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lˋᵔ/ˋᵔ;->ﹳٴ(F)V

    invoke-virtual {v1, v6, v7}, Lˋᵔ/ˋᵔ;->ʽ(J)V

    new-instance v2, Lˉʿ/ʼˎ;

    invoke-direct {v2, p1, v3}, Lˉʿ/ʼˎ;-><init>(Lˉˆ/ˏⁱ;I)V

    invoke-virtual {v1, v2}, Lˋᵔ/ˋᵔ;->ˈ(Lˋᵔ/ˊˋ;)V

    iget-object p1, p0, Lᵔᵢ/ᵎⁱ;->ﾞʻ:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0, v4, v5}, Landroidx/appcompat/widget/ActionBarContextView;->ʼˎ(IJ)Lˋᵔ/ˋᵔ;

    move-result-object p1

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lᵔᵢ/ᵎⁱ;->ٴﹶ:Lˉˆ/ﹳﹳ;

    check-cast p1, Lˉˆ/ˏⁱ;

    iget-object v1, p1, Lˉˆ/ˏⁱ;->ﹳٴ:Landroidx/appcompat/widget/Toolbar;

    invoke-static {v1}, Lˋᵔ/ᵎˊ;->ﹳٴ(Landroid/view/View;)Lˋᵔ/ˋᵔ;

    move-result-object v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Lˋᵔ/ˋᵔ;->ﹳٴ(F)V

    invoke-virtual {v1, v4, v5}, Lˋᵔ/ˋᵔ;->ʽ(J)V

    new-instance v3, Lˉʿ/ʼˎ;

    invoke-direct {v3, p1, v0}, Lˉʿ/ʼˎ;-><init>(Lˉˆ/ˏⁱ;I)V

    invoke-virtual {v1, v3}, Lˋᵔ/ˋᵔ;->ˈ(Lˋᵔ/ˊˋ;)V

    iget-object p1, p0, Lᵔᵢ/ᵎⁱ;->ﾞʻ:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v2, v6, v7}, Landroidx/appcompat/widget/ActionBarContextView;->ʼˎ(IJ)Lˋᵔ/ˋᵔ;

    move-result-object p1

    move-object v8, v1

    move-object v1, p1

    move-object p1, v8

    :goto_1
    new-instance v0, Lˉʿ/ˆʾ;

    invoke-direct {v0}, Lˉʿ/ˆʾ;-><init>()V

    iget-object v2, v0, Lˉʿ/ˆʾ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v1, Lˋᵔ/ˋᵔ;->ﹳٴ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->getDuration()J

    move-result-wide v3

    goto :goto_2

    :cond_5
    const-wide/16 v3, 0x0

    :goto_2
    iget-object v1, p1, Lˋᵔ/ˋᵔ;->ﹳٴ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    :cond_6
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lˉʿ/ˆʾ;->ⁱˊ()V

    return-void

    :cond_7
    if-eqz p1, :cond_8

    iget-object p1, p0, Lᵔᵢ/ᵎⁱ;->ٴﹶ:Lˉˆ/ﹳﹳ;

    check-cast p1, Lˉˆ/ˏⁱ;

    iget-object p1, p1, Lˉˆ/ˏⁱ;->ﹳٴ:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lᵔᵢ/ᵎⁱ;->ﾞʻ:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    return-void

    :cond_8
    iget-object p1, p0, Lᵔᵢ/ᵎⁱ;->ٴﹶ:Lˉˆ/ﹳﹳ;

    check-cast p1, Lˉˆ/ˏⁱ;

    iget-object p1, p1, Lˉˆ/ˏⁱ;->ﹳٴ:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lᵔᵢ/ᵎⁱ;->ﾞʻ:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    return-void
.end method

.method public final ˏᵢ(Z)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lᵔᵢ/ᵎⁱ;->ٴﹶ:Lˉˆ/ﹳﹳ;

    check-cast p1, Lˉˆ/ˏⁱ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lᵔᵢ/ᵎⁱ;->ˆʾ:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Lˉˆ/ˈـ;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lᵔᵢ/ᵎⁱ;->ˆʾ:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Lˉˆ/ˈـ;)V

    iget-object p1, p0, Lᵔᵢ/ᵎⁱ;->ٴﹶ:Lˉˆ/ﹳﹳ;

    check-cast p1, Lˉˆ/ˏⁱ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    iget-object p1, p0, Lᵔᵢ/ᵎⁱ;->ٴﹶ:Lˉˆ/ﹳﹳ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lᵔᵢ/ᵎⁱ;->ٴﹶ:Lˉˆ/ﹳﹳ;

    check-cast p1, Lˉˆ/ˏⁱ;

    iget-object p1, p1, Lˉˆ/ˏⁱ;->ﹳٴ:Landroidx/appcompat/widget/Toolbar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setCollapsible(Z)V

    iget-object p1, p0, Lᵔᵢ/ᵎⁱ;->ʼˎ:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    return-void
.end method

.method public final ᐧᴵ(Z)V
    .locals 4

    .prologue
    iget-boolean v0, p0, Lᵔᵢ/ᵎⁱ;->ᵔʾ:Z

    if-nez v0, :cond_1

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lᵔᵢ/ᵎⁱ;->ٴﹶ:Lˉˆ/ﹳﹳ;

    check-cast v1, Lˉˆ/ˏⁱ;

    iget v2, v1, Lˉˆ/ˏⁱ;->ⁱˊ:I

    const/4 v3, 0x1

    iput-boolean v3, p0, Lᵔᵢ/ᵎⁱ;->ᵔʾ:Z

    and-int/2addr p1, v0

    and-int/lit8 v0, v2, -0x5

    or-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lˉˆ/ˏⁱ;->ﹳٴ(I)V

    :cond_1
    return-void
.end method

.method public final ᐧﾞ(Landroid/view/View;)V
    .locals 6

    .prologue
    const v0, 0x7f0b0114

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iput-object v0, p0, Lᵔᵢ/ᵎⁱ;->ʼˎ:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setActionBarVisibilityCallback(Lˉˆ/ʽ;)V

    :cond_0
    const v0, 0x7f0b003b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lˉˆ/ﹳﹳ;

    if-eqz v1, :cond_1

    check-cast v0, Lˉˆ/ﹳﹳ;

    goto :goto_0

    :cond_1
    instance-of v1, v0, Landroidx/appcompat/widget/Toolbar;

    if-eqz v1, :cond_8

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getWrapper()Lˉˆ/ﹳﹳ;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lᵔᵢ/ᵎⁱ;->ٴﹶ:Lˉˆ/ﹳﹳ;

    const v0, 0x7f0b0043

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object v0, p0, Lᵔᵢ/ᵎⁱ;->ﾞʻ:Landroidx/appcompat/widget/ActionBarContextView;

    const v0, 0x7f0b003d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ActionBarContainer;

    iput-object p1, p0, Lᵔᵢ/ᵎⁱ;->ˆʾ:Landroidx/appcompat/widget/ActionBarContainer;

    iget-object v0, p0, Lᵔᵢ/ᵎⁱ;->ٴﹶ:Lˉˆ/ﹳﹳ;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lᵔᵢ/ᵎⁱ;->ﾞʻ:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v1, :cond_7

    if-eqz p1, :cond_7

    check-cast v0, Lˉˆ/ˏⁱ;

    iget-object p1, v0, Lˉˆ/ˏⁱ;->ﹳٴ:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lᵔᵢ/ᵎⁱ;->ᵎﹶ:Landroid/content/Context;

    iget-object v0, p0, Lᵔᵢ/ᵎⁱ;->ٴﹶ:Lˉˆ/ﹳﹳ;

    check-cast v0, Lˉˆ/ˏⁱ;

    iget v0, v0, Lˉˆ/ˏⁱ;->ⁱˊ:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lᵔᵢ/ᵎⁱ;->ᵔʾ:Z

    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0xe

    iget-object v0, p0, Lᵔᵢ/ᵎⁱ;->ٴﹶ:Lˉˆ/ﹳﹳ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 v0, 0x7f050000

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lᵔᵢ/ᵎⁱ;->ˏᵢ(Z)V

    iget-object p1, p0, Lᵔᵢ/ᵎⁱ;->ᵎﹶ:Landroid/content/Context;

    sget-object v0, Lᵎﹶ/ﹳٴ;->ﹳٴ:[I

    const v3, 0x7f040007

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v0, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lᵔᵢ/ᵎⁱ;->ʼˎ:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-boolean v3, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ٴᵢ:Z

    if-eqz v3, :cond_4

    iput-boolean v1, p0, Lᵔᵢ/ᵎⁱ;->ʾˋ:Z

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_2
    const/16 v0, 0xc

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-eqz v0, :cond_6

    int-to-float v0, v0

    iget-object v1, p0, Lᵔᵢ/ᵎⁱ;->ˆʾ:Landroidx/appcompat/widget/ActionBarContainer;

    sget-object v2, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-static {v1, v0}, Lˋᵔ/ʽʽ;->ʼˎ(Landroid/view/View;F)V

    :cond_6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-class v0, Lᵔᵢ/ᵎⁱ;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, " can only be used with a compatible window decor layout"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_9
    const-string v0, "null"

    :goto_3
    const-string v1, "Can\'t make a decor toolbar out of "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ᴵʼ(Z)V
    .locals 11

    .prologue
    iget-boolean v0, p0, Lᵔᵢ/ᵎⁱ;->ʻٴ:Z

    iget-boolean v1, p0, Lᵔᵢ/ᵎⁱ;->ـˆ:Z

    const-wide/16 v2, 0xfa

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    iget-object v6, p0, Lᵔᵢ/ᵎⁱ;->ˈٴ:Lᐧﹳ/ʽ;

    iget-object v7, p0, Lᵔᵢ/ᵎⁱ;->ˉʿ:Landroid/view/View;

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v1, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lᵔᵢ/ᵎⁱ;->ʾᵎ:Z

    if-eqz v0, :cond_19

    iput-boolean v9, p0, Lᵔᵢ/ᵎⁱ;->ʾᵎ:Z

    iget-object v0, p0, Lᵔᵢ/ᵎⁱ;->ʼʼ:Lˉʿ/ˆʾ;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lˉʿ/ˆʾ;->ﹳٴ()V

    :cond_1
    iget v0, p0, Lᵔᵢ/ᵎⁱ;->ˏי:I

    iget-object v1, p0, Lᵔᵢ/ᵎⁱ;->ᴵˊ:Lᵔᵢ/ٴᵢ;

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lᵔᵢ/ᵎⁱ;->ᵢˏ:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_b

    :cond_2
    iget-object v0, p0, Lᵔᵢ/ᵎⁱ;->ˆʾ:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lᵔᵢ/ᵎⁱ;->ˆʾ:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v8}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    new-instance v0, Lˉʿ/ˆʾ;

    invoke-direct {v0}, Lˉʿ/ˆʾ;-><init>()V

    iget-object v5, p0, Lᵔᵢ/ᵎⁱ;->ˆʾ:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    if-eqz p1, :cond_3

    filled-new-array {v9, v9}, [I

    move-result-object p1

    iget-object v9, p0, Lᵔᵢ/ᵎⁱ;->ˆʾ:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v9, p1}, Landroid/view/View;->getLocationInWindow([I)V

    aget p1, p1, v8

    int-to-float p1, p1

    sub-float/2addr v5, p1

    :cond_3
    iget-object p1, p0, Lᵔᵢ/ᵎⁱ;->ˆʾ:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {p1}, Lˋᵔ/ᵎˊ;->ﹳٴ(Landroid/view/View;)Lˋᵔ/ˋᵔ;

    move-result-object p1

    invoke-virtual {p1, v5}, Lˋᵔ/ˋᵔ;->ˑﹳ(F)V

    iget-object v8, p1, Lˋᵔ/ˋᵔ;->ﹳٴ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    if-eqz v8, :cond_5

    if-eqz v6, :cond_4

    new-instance v4, Lˋᵔ/ˈʿ;

    invoke-direct {v4, v6, v8}, Lˋᵔ/ˈʿ;-><init>(Lᐧﹳ/ʽ;Landroid/view/View;)V

    :cond_4
    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    :cond_5
    iget-boolean v4, v0, Lˉʿ/ˆʾ;->ˑﹳ:Z

    iget-object v6, v0, Lˉʿ/ˆʾ;->ﹳٴ:Ljava/util/ArrayList;

    if-nez v4, :cond_6

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-boolean p1, p0, Lᵔᵢ/ᵎⁱ;->ʽﹳ:Z

    if-eqz p1, :cond_7

    if-eqz v7, :cond_7

    invoke-static {v7}, Lˋᵔ/ᵎˊ;->ﹳٴ(Landroid/view/View;)Lˋᵔ/ˋᵔ;

    move-result-object p1

    invoke-virtual {p1, v5}, Lˋᵔ/ˋᵔ;->ˑﹳ(F)V

    iget-boolean v4, v0, Lˉʿ/ˆʾ;->ˑﹳ:Z

    if-nez v4, :cond_7

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-boolean p1, v0, Lˉʿ/ˆʾ;->ˑﹳ:Z

    if-nez p1, :cond_8

    sget-object v4, Lᵔᵢ/ᵎⁱ;->ᴵᵔ:Landroid/view/animation/AccelerateInterpolator;

    iput-object v4, v0, Lˉʿ/ˆʾ;->ʽ:Landroid/view/animation/Interpolator;

    :cond_8
    if-nez p1, :cond_9

    iput-wide v2, v0, Lˉʿ/ˆʾ;->ⁱˊ:J

    :cond_9
    if-nez p1, :cond_a

    iput-object v1, v0, Lˉʿ/ˆʾ;->ˈ:Lˋᵔ/ˊˋ;

    :cond_a
    iput-object v0, p0, Lᵔᵢ/ᵎⁱ;->ʼʼ:Lˉʿ/ˆʾ;

    invoke-virtual {v0}, Lˉʿ/ˆʾ;->ⁱˊ()V

    return-void

    :cond_b
    invoke-virtual {v1}, Lᵔᵢ/ٴᵢ;->ʽ()V

    return-void

    :cond_c
    :goto_0
    iget-boolean v0, p0, Lᵔᵢ/ᵎⁱ;->ʾᵎ:Z

    if-nez v0, :cond_19

    iput-boolean v8, p0, Lᵔᵢ/ᵎⁱ;->ʾᵎ:Z

    iget-object v0, p0, Lᵔᵢ/ᵎⁱ;->ʼʼ:Lˉʿ/ˆʾ;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lˉʿ/ˆʾ;->ﹳٴ()V

    :cond_d
    iget-object v0, p0, Lᵔᵢ/ᵎⁱ;->ˆʾ:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v9}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    iget v0, p0, Lᵔᵢ/ᵎⁱ;->ˏי:I

    iget-object v1, p0, Lᵔᵢ/ᵎⁱ;->ʽʽ:Lᵔᵢ/ٴᵢ;

    const/4 v10, 0x0

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lᵔᵢ/ᵎⁱ;->ᵢˏ:Z

    if-nez v0, :cond_e

    if-eqz p1, :cond_17

    :cond_e
    iget-object v0, p0, Lᵔᵢ/ᵎⁱ;->ˆʾ:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v10}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lᵔᵢ/ᵎⁱ;->ˆʾ:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    if-eqz p1, :cond_f

    filled-new-array {v9, v9}, [I

    move-result-object p1

    iget-object v5, p0, Lᵔᵢ/ᵎⁱ;->ˆʾ:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v5, p1}, Landroid/view/View;->getLocationInWindow([I)V

    aget p1, p1, v8

    int-to-float p1, p1

    sub-float/2addr v0, p1

    :cond_f
    iget-object p1, p0, Lᵔᵢ/ᵎⁱ;->ˆʾ:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    new-instance p1, Lˉʿ/ˆʾ;

    invoke-direct {p1}, Lˉʿ/ˆʾ;-><init>()V

    iget-object v5, p0, Lᵔᵢ/ᵎⁱ;->ˆʾ:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {v5}, Lˋᵔ/ᵎˊ;->ﹳٴ(Landroid/view/View;)Lˋᵔ/ˋᵔ;

    move-result-object v5

    invoke-virtual {v5, v10}, Lˋᵔ/ˋᵔ;->ˑﹳ(F)V

    iget-object v8, v5, Lˋᵔ/ˋᵔ;->ﹳٴ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    if-eqz v8, :cond_11

    if-eqz v6, :cond_10

    new-instance v4, Lˋᵔ/ˈʿ;

    invoke-direct {v4, v6, v8}, Lˋᵔ/ˈʿ;-><init>(Lᐧﹳ/ʽ;Landroid/view/View;)V

    :cond_10
    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    :cond_11
    iget-boolean v4, p1, Lˉʿ/ˆʾ;->ˑﹳ:Z

    iget-object v6, p1, Lˉʿ/ˆʾ;->ﹳٴ:Ljava/util/ArrayList;

    if-nez v4, :cond_12

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    iget-boolean v4, p0, Lᵔᵢ/ᵎⁱ;->ʽﹳ:Z

    if-eqz v4, :cond_13

    if-eqz v7, :cond_13

    invoke-virtual {v7, v0}, Landroid/view/View;->setTranslationY(F)V

    invoke-static {v7}, Lˋᵔ/ᵎˊ;->ﹳٴ(Landroid/view/View;)Lˋᵔ/ˋᵔ;

    move-result-object v0

    invoke-virtual {v0, v10}, Lˋᵔ/ˋᵔ;->ˑﹳ(F)V

    iget-boolean v4, p1, Lˉʿ/ˆʾ;->ˑﹳ:Z

    if-nez v4, :cond_13

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    iget-boolean v0, p1, Lˉʿ/ˆʾ;->ˑﹳ:Z

    if-nez v0, :cond_14

    sget-object v4, Lᵔᵢ/ᵎⁱ;->ˊʻ:Landroid/view/animation/DecelerateInterpolator;

    iput-object v4, p1, Lˉʿ/ˆʾ;->ʽ:Landroid/view/animation/Interpolator;

    :cond_14
    if-nez v0, :cond_15

    iput-wide v2, p1, Lˉʿ/ˆʾ;->ⁱˊ:J

    :cond_15
    if-nez v0, :cond_16

    iput-object v1, p1, Lˉʿ/ˆʾ;->ˈ:Lˋᵔ/ˊˋ;

    :cond_16
    iput-object p1, p0, Lᵔᵢ/ᵎⁱ;->ʼʼ:Lˉʿ/ˆʾ;

    invoke-virtual {p1}, Lˉʿ/ˆʾ;->ⁱˊ()V

    goto :goto_1

    :cond_17
    iget-object p1, p0, Lᵔᵢ/ᵎⁱ;->ˆʾ:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lᵔᵢ/ᵎⁱ;->ˆʾ:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v10}, Landroid/view/View;->setTranslationY(F)V

    iget-boolean p1, p0, Lᵔᵢ/ᵎⁱ;->ʽﹳ:Z

    if-eqz p1, :cond_18

    if-eqz v7, :cond_18

    invoke-virtual {v7, v10}, Landroid/view/View;->setTranslationY(F)V

    :cond_18
    invoke-virtual {v1}, Lᵔᵢ/ٴᵢ;->ʽ()V

    :goto_1
    iget-object p1, p0, Lᵔᵢ/ᵎⁱ;->ʼˎ:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz p1, :cond_19

    sget-object v0, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-static {p1}, Lˋᵔ/ʾˋ;->ʽ(Landroid/view/View;)V

    :cond_19
    return-void
.end method

.method public final ᵎᵔ()Landroid/content/Context;
    .locals 4

    .prologue
    iget-object v0, p0, Lᵔᵢ/ᵎⁱ;->ᵔᵢ:Landroid/content/Context;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Lᵔᵢ/ᵎⁱ;->ᵎﹶ:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f04000c

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_0

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lᵔᵢ/ᵎⁱ;->ᵎﹶ:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lᵔᵢ/ᵎⁱ;->ᵔᵢ:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lᵔᵢ/ᵎⁱ;->ᵎﹶ:Landroid/content/Context;

    iput-object v0, p0, Lᵔᵢ/ᵎⁱ;->ᵔᵢ:Landroid/content/Context;

    :cond_1
    :goto_0
    iget-object v0, p0, Lᵔᵢ/ᵎⁱ;->ᵔᵢ:Landroid/content/Context;

    return-object v0
.end method
