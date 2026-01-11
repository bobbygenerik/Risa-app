.class public Landroidx/leanback/widget/ˑٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽﹳ:Landroidx/leanback/widget/ˉˆ;


# instance fields
.field public ʼˎ:F

.field public ʼᐧ:I

.field public ʽ:Landroidx/leanback/widget/VerticalGridView;

.field public ˆʾ:F

.field public ˈ:Landroid/view/View;

.field public ˉʿ:I

.field public ˉˆ:I

.field public ˏי:F

.field public ˑﹳ:Landroid/view/View;

.field public יـ:Landroid/transition/TransitionSet;

.field public ٴﹶ:F

.field public ᵎﹶ:F

.field public ᵔʾ:I

.field public ᵔᵢ:F

.field public ᵔﹳ:I

.field public ⁱˊ:Landroidx/leanback/widget/VerticalGridView;

.field public ﹳٴ:Landroid/view/ViewGroup;

.field public ﹳᐧ:Landroidx/leanback/widget/ʾᵎ;

.field public ﾞʻ:F

.field public ﾞᴵ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroidx/leanback/widget/ˉˆ;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/leanback/widget/ˉˆ;-><init>(IZ)V

    new-instance v3, Landroidx/leanback/widget/ـˏ;

    invoke-direct {v3}, Landroidx/leanback/widget/ـˏ;-><init>()V

    new-array v4, v1, [Landroidx/leanback/widget/ـˏ;

    aput-object v3, v4, v2

    iput-object v4, v0, Landroidx/leanback/widget/ˉˆ;->ᴵˊ:Ljava/lang/Object;

    sput-object v0, Landroidx/leanback/widget/ˑٴ;->ʽﹳ:Landroidx/leanback/widget/ˉˆ;

    new-instance v3, Landroidx/leanback/widget/ـˏ;

    invoke-direct {v3}, Landroidx/leanback/widget/ـˏ;-><init>()V

    const v4, 0x7f0b01c4

    iput v4, v3, Landroidx/leanback/widget/ـˏ;->ﹳٴ:I

    iput-boolean v1, v3, Landroidx/leanback/widget/ـˏ;->ˑﹳ:Z

    iput v2, v3, Landroidx/leanback/widget/ـˏ;->ⁱˊ:I

    iput-boolean v1, v3, Landroidx/leanback/widget/ـˏ;->ˈ:Z

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/leanback/widget/ـˏ;->ﹳٴ(F)V

    new-array v1, v1, [Landroidx/leanback/widget/ـˏ;

    aput-object v3, v1, v2

    iput-object v1, v0, Landroidx/leanback/widget/ˉˆ;->ᴵˊ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/leanback/widget/ˑٴ;->ﹳᐧ:Landroidx/leanback/widget/ʾᵎ;

    return-void
.end method


# virtual methods
.method public final ʼˎ(Landroidx/leanback/widget/ˈʿ;)V
    .locals 8

    .prologue
    iget-boolean v0, p1, Landroidx/leanback/widget/ˈʿ;->ˏᵢ:Z

    iget-object v1, p1, Landroidx/leanback/widget/ˈʿ;->ʿ:Landroid/view/View;

    iget-object v2, p1, Lˋˋ/ʼـ;->ʾˋ:Landroid/view/View;

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/leanback/widget/ˑٴ;->ﹳᐧ:Landroidx/leanback/widget/ʾᵎ;

    if-nez v0, :cond_0

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setTranslationY(F)V

    if-eqz v1, :cond_2

    invoke-virtual {v1, v6}, Landroid/view/View;->setActivated(Z)V

    instance-of v0, v2, Landroidx/leanback/widget/GuidedActionItemContainer;

    if-eqz v0, :cond_2

    check-cast v2, Landroidx/leanback/widget/GuidedActionItemContainer;

    iput-boolean v4, v2, Landroidx/leanback/widget/GuidedActionItemContainer;->ʾˋ:Z

    goto :goto_0

    :cond_0
    iget-object v7, p1, Landroidx/leanback/widget/ˈʿ;->ﹳـ:Landroidx/leanback/widget/ʾᵎ;

    if-ne v7, v0, :cond_1

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Landroidx/leanback/widget/ˈʿ;->ﹳـ:Landroidx/leanback/widget/ʾᵎ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v1, :cond_2

    invoke-virtual {v2, v5}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setActivated(Z)V

    instance-of v0, v2, Landroidx/leanback/widget/GuidedActionItemContainer;

    if-eqz v0, :cond_2

    check-cast v2, Landroidx/leanback/widget/GuidedActionItemContainer;

    iput-boolean v6, v2, Landroidx/leanback/widget/GuidedActionItemContainer;->ʾˋ:Z

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setTranslationY(F)V

    :cond_2
    :goto_0
    iget-object v0, p1, Landroidx/leanback/widget/ˈʿ;->ᐧﾞ:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    iget-object p1, p1, Landroidx/leanback/widget/ˈʿ;->ﹳـ:Landroidx/leanback/widget/ʾᵎ;

    iget v1, p1, Landroidx/leanback/widget/ʾᵎ;->ˑﹳ:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    move v1, v4

    goto :goto_1

    :cond_3
    move v1, v6

    :goto_1
    if-nez v1, :cond_4

    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_4
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p1}, Landroidx/leanback/widget/ʾᵎ;->ˈ()Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, p0, Landroidx/leanback/widget/ˑٴ;->ٴﹶ:F

    goto :goto_2

    :cond_5
    iget v2, p0, Landroidx/leanback/widget/ˑٴ;->ﾞʻ:F

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    if-eqz v1, :cond_7

    iget-object p1, p0, Landroidx/leanback/widget/ˑٴ;->ﹳٴ:Landroid/view/ViewGroup;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    if-ne p1, v4, :cond_6

    const/high16 v5, 0x43340000    # 180.0f

    :cond_6
    invoke-virtual {v0, v5}, Landroid/view/View;->setRotation(F)V

    return-void

    :cond_7
    iget-object v1, p0, Landroidx/leanback/widget/ˑٴ;->ﹳᐧ:Landroidx/leanback/widget/ʾᵎ;

    if-ne p1, v1, :cond_8

    const/high16 p1, 0x43870000    # 270.0f

    invoke-virtual {v0, p1}, Landroid/view/View;->setRotation(F)V

    return-void

    :cond_8
    const/high16 p1, 0x42b40000    # 90.0f

    invoke-virtual {v0, p1}, Landroid/view/View;->setRotation(F)V

    :cond_9
    return-void
.end method

.method public final ʽ(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 3

    .prologue
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lـᵎ/ﹳٴ;->ﹳٴ:[I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v1, 0x2e

    const/high16 v2, 0x42200000    # 40.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iget-boolean v1, p0, Landroidx/leanback/widget/ˑٴ;->ﾞᴵ:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0e00a5

    goto :goto_0

    :cond_0
    const v1, 0x7f0e00a2

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Landroidx/leanback/widget/ˑٴ;->ﹳٴ:Landroid/view/ViewGroup;

    iget-boolean p2, p0, Landroidx/leanback/widget/ˑٴ;->ﾞᴵ:Z

    if-eqz p2, :cond_1

    const p2, 0x7f0b01be

    goto :goto_1

    :cond_1
    const p2, 0x7f0b01bd

    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/leanback/widget/ˑٴ;->ˑﹳ:Landroid/view/View;

    iget-object p1, p0, Landroidx/leanback/widget/ˑٴ;->ﹳٴ:Landroid/view/ViewGroup;

    instance-of p2, p1, Landroidx/leanback/widget/VerticalGridView;

    if-eqz p2, :cond_2

    check-cast p1, Landroidx/leanback/widget/VerticalGridView;

    iput-object p1, p0, Landroidx/leanback/widget/ˑٴ;->ⁱˊ:Landroidx/leanback/widget/VerticalGridView;

    goto :goto_3

    :cond_2
    iget-boolean p2, p0, Landroidx/leanback/widget/ˑٴ;->ﾞᴵ:Z

    if-eqz p2, :cond_3

    const p2, 0x7f0b01c6

    goto :goto_2

    :cond_3
    const p2, 0x7f0b01c5

    :goto_2
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/VerticalGridView;

    iput-object p1, p0, Landroidx/leanback/widget/ˑٴ;->ⁱˊ:Landroidx/leanback/widget/VerticalGridView;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/ᵔᵢ;->setWindowAlignmentOffsetPercent(F)V

    iget-object p1, p0, Landroidx/leanback/widget/ˑٴ;->ⁱˊ:Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {p1, v2}, Landroidx/leanback/widget/ᵔᵢ;->setWindowAlignment(I)V

    iget-boolean p1, p0, Landroidx/leanback/widget/ˑٴ;->ﾞᴵ:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Landroidx/leanback/widget/ˑٴ;->ﹳٴ:Landroid/view/ViewGroup;

    const p2, 0x7f0b01cb

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/VerticalGridView;

    iput-object p1, p0, Landroidx/leanback/widget/ˑٴ;->ʽ:Landroidx/leanback/widget/VerticalGridView;

    iget-object p1, p0, Landroidx/leanback/widget/ˑٴ;->ﹳٴ:Landroid/view/ViewGroup;

    const p2, 0x7f0b01cc

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/leanback/widget/ˑٴ;->ˈ:Landroid/view/View;

    :cond_4
    :goto_3
    iget-object p1, p0, Landroidx/leanback/widget/ˑٴ;->ⁱˊ:Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setFocusable(Z)V

    iget-object p1, p0, Landroidx/leanback/widget/ˑٴ;->ⁱˊ:Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object p1, p0, Landroidx/leanback/widget/ˑٴ;->ﹳٴ:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    const v0, 0x7f0402d1

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p2, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p2}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    iput v0, p0, Landroidx/leanback/widget/ˑٴ;->ٴﹶ:F

    const v0, 0x7f0402d0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v1, v0, p2, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p2}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    iput v0, p0, Landroidx/leanback/widget/ˑٴ;->ﾞʻ:F

    const v0, 0x7f0402db

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v1, v0, p2, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroidx/leanback/widget/ˑٴ;->ˉʿ:I

    const v0, 0x7f0402da

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v1, v0, p2, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroidx/leanback/widget/ˑٴ;->ᵔʾ:I

    const v0, 0x7f0402cf

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v1, v0, p2, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroidx/leanback/widget/ˑٴ;->ˉˆ:I

    const v0, 0x7f0402de

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v1, v0, p2, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/leanback/widget/ˑٴ;->ʼᐧ:I

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Landroidx/leanback/widget/ˑٴ;->ᵔﹳ:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07014d

    invoke-virtual {v0, v1, p2, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {p2}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    iput v0, p0, Landroidx/leanback/widget/ˑٴ;->ᵎﹶ:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070141

    invoke-virtual {v0, v1, p2, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {p2}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    iput v0, p0, Landroidx/leanback/widget/ˑٴ;->ᵔᵢ:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07014c

    invoke-virtual {v0, v1, p2, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {p2}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    iput v0, p0, Landroidx/leanback/widget/ˑٴ;->ʼˎ:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070140

    invoke-virtual {v0, v1, p2, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {p2}, Landroid/util/TypedValue;->getFloat()F

    move-result p2

    iput p2, p0, Landroidx/leanback/widget/ˑٴ;->ˆʾ:F

    invoke-static {p1}, Landroidx/leanback/widget/GuidanceStylingRelativeLayout;->ﹳٴ(Landroid/content/Context;)F

    move-result p1

    iput p1, p0, Landroidx/leanback/widget/ˑٴ;->ˏי:F

    iget-object p1, p0, Landroidx/leanback/widget/ˑٴ;->ˑﹳ:Landroid/view/View;

    instance-of p2, p1, Landroidx/leanback/widget/GuidedActionsRelativeLayout;

    if-eqz p2, :cond_5

    check-cast p1, Landroidx/leanback/widget/GuidedActionsRelativeLayout;

    new-instance p2, Landroidx/leanback/widget/ᵎˊ;

    invoke-direct {p2, p0}, Landroidx/leanback/widget/ᵎˊ;-><init>(Landroidx/leanback/widget/ˑٴ;)V

    iput-object p2, p1, Landroidx/leanback/widget/GuidedActionsRelativeLayout;->ʽʽ:Landroidx/leanback/widget/ᵎˊ;

    :cond_5
    iget-object p1, p0, Landroidx/leanback/widget/ˑٴ;->ﹳٴ:Landroid/view/ViewGroup;

    return-object p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No ListView exists."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ˈ(Landroid/view/ViewGroup;)Landroidx/leanback/widget/ˈʿ;
    .locals 4

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/leanback/widget/ˑٴ;->ﾞᴵ()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroidx/leanback/widget/ˈʿ;

    iget-object v3, p0, Landroidx/leanback/widget/ˑٴ;->ʽ:Landroidx/leanback/widget/VerticalGridView;

    if-ne p1, v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-direct {v1, v0, v2}, Landroidx/leanback/widget/ˈʿ;-><init>(Landroid/view/View;Z)V

    return-object v1
.end method

.method public final ˑﹳ(Landroidx/leanback/widget/ˈʿ;ZZ)V
    .locals 3

    .prologue
    iget-object v0, p1, Landroidx/leanback/widget/ˈʿ;->ʿ:Landroid/view/View;

    iget-object v1, p1, Lˋˋ/ʼـ;->ʾˋ:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p3}, Landroidx/leanback/widget/ˑٴ;->ᵔᵢ(Landroidx/leanback/widget/ˈʿ;Z)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    new-instance p2, Landroidx/leanback/widget/ᵔי;

    invoke-direct {p2, p0, p1}, Landroidx/leanback/widget/ᵔי;-><init>(Landroidx/leanback/widget/ˑٴ;Landroidx/leanback/widget/ˈʿ;)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p3}, Landroidx/leanback/widget/ˑٴ;->ᵔᵢ(Landroidx/leanback/widget/ˈʿ;Z)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method public final ᵎﹶ(Landroidx/leanback/widget/ˈʿ;ZZ)V
    .locals 9

    .prologue
    iget v0, p1, Landroidx/leanback/widget/ˈʿ;->ᐧᴵ:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eq p2, v0, :cond_f

    iget-object v0, p0, Landroidx/leanback/widget/ˑٴ;->יـ:Landroid/transition/TransitionSet;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p1, Landroidx/leanback/widget/ˈʿ;->ﹳـ:Landroidx/leanback/widget/ʾᵎ;

    iget-object v3, p1, Landroidx/leanback/widget/ˈʿ;->ʿ:Landroid/view/View;

    iget-object v4, p1, Landroidx/leanback/widget/ˈʿ;->ᴵˑ:Landroid/widget/TextView;

    iget-object v5, p1, Landroidx/leanback/widget/ˈʿ;->ˉـ:Landroid/widget/TextView;

    const/4 v6, 0x2

    const/4 v7, 0x3

    if-eqz p2, :cond_8

    iget-object v8, v0, Landroidx/leanback/widget/ʾᵎ;->ﾞᴵ:Ljava/lang/CharSequence;

    if-eqz v4, :cond_2

    if-eqz v8, :cond_2

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v8, v0, Landroidx/leanback/widget/ʾᵎ;->ᵎﹶ:Ljava/lang/CharSequence;

    if-eqz v5, :cond_3

    if-eqz v8, :cond_3

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget v8, v0, Landroidx/leanback/widget/ʾᵎ;->ᵔᵢ:I

    if-ne v8, v6, :cond_5

    if-eqz v5, :cond_4

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    iget p2, v0, Landroidx/leanback/widget/ʾᵎ;->ﾞʻ:I

    invoke-virtual {v5, p2}, Landroid/widget/TextView;->setInputType(I)V

    invoke-virtual {v5}, Landroid/view/View;->requestFocusFromTouch()Z

    :cond_4
    iput v6, p1, Landroidx/leanback/widget/ˈʿ;->ᐧᴵ:I

    return-void

    :cond_5
    invoke-virtual {v0}, Landroidx/leanback/widget/ʾᵎ;->ʽ()Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz v4, :cond_6

    iget p2, v0, Landroidx/leanback/widget/ʾᵎ;->ٴﹶ:I

    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setInputType(I)V

    invoke-virtual {v4}, Landroid/view/View;->requestFocusFromTouch()Z

    :cond_6
    iput v2, p1, Landroidx/leanback/widget/ˈʿ;->ᐧᴵ:I

    return-void

    :cond_7
    if-eqz v3, :cond_f

    invoke-virtual {p0, p1, p2, p3}, Landroidx/leanback/widget/ˑٴ;->ˑﹳ(Landroidx/leanback/widget/ˈʿ;ZZ)V

    iput v7, p1, Landroidx/leanback/widget/ˈʿ;->ᐧᴵ:I

    return-void

    :cond_8
    if-eqz v4, :cond_9

    iget-object v8, v0, Landroidx/leanback/widget/ʾᵎ;->ʽ:Ljava/lang/CharSequence;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    if-eqz v5, :cond_a

    iget-object v8, v0, Landroidx/leanback/widget/ʾᵎ;->ˈ:Ljava/lang/CharSequence;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    iget v8, p1, Landroidx/leanback/widget/ˈʿ;->ᐧᴵ:I

    if-ne v8, v6, :cond_c

    if-eqz v5, :cond_e

    iget-object p2, v0, Landroidx/leanback/widget/ʾᵎ;->ˈ:Ljava/lang/CharSequence;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_b

    const/16 p2, 0x8

    goto :goto_1

    :cond_b
    move p2, v1

    :goto_1
    invoke-virtual {v5, p2}, Landroid/view/View;->setVisibility(I)V

    iget p2, v0, Landroidx/leanback/widget/ʾᵎ;->ˆʾ:I

    invoke-virtual {v5, p2}, Landroid/widget/TextView;->setInputType(I)V

    goto :goto_2

    :cond_c
    if-ne v8, v2, :cond_d

    if-eqz v4, :cond_e

    iget p2, v0, Landroidx/leanback/widget/ʾᵎ;->ʼˎ:I

    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setInputType(I)V

    goto :goto_2

    :cond_d
    if-ne v8, v7, :cond_e

    if-eqz v3, :cond_e

    invoke-virtual {p0, p1, p2, p3}, Landroidx/leanback/widget/ˑٴ;->ˑﹳ(Landroidx/leanback/widget/ˈʿ;ZZ)V

    :cond_e
    :goto_2
    iput v1, p1, Landroidx/leanback/widget/ˈʿ;->ᐧᴵ:I

    :cond_f
    return-void
.end method

.method public final ᵔᵢ(Landroidx/leanback/widget/ˈʿ;Z)V
    .locals 12

    .prologue
    iget-object v0, p0, Landroidx/leanback/widget/ˑٴ;->ⁱˊ:Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Landroidx/leanback/widget/ˑٴ;->ⁱˊ:Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->ˆﾞ(Landroid/view/View;)Lˋˋ/ʼـ;

    move-result-object v3

    check-cast v3, Landroidx/leanback/widget/ˈʿ;

    if-nez p1, :cond_0

    iget-object v4, v3, Lˋˋ/ʼـ;->ʾˋ:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    iget-object v4, v3, Landroidx/leanback/widget/ˈʿ;->ﹳـ:Landroidx/leanback/widget/ʾᵎ;

    iget-object v5, p1, Landroidx/leanback/widget/ˈʿ;->ﹳـ:Landroidx/leanback/widget/ʾᵎ;

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_3

    return-void

    :cond_3
    iget-object v2, v3, Landroidx/leanback/widget/ˈʿ;->ﹳـ:Landroidx/leanback/widget/ʾᵎ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_7

    new-instance p2, Landroid/transition/TransitionSet;

    invoke-direct {p2}, Landroid/transition/TransitionSet;-><init>()V

    invoke-virtual {p2, v1}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    iget-object v2, v3, Lˋˋ/ʼـ;->ʾˋ:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v2, v4

    new-instance v4, Landroidx/leanback/transition/FadeAndShortSlide;

    const/16 v5, 0x70

    invoke-direct {v4, v5}, Landroidx/leanback/transition/FadeAndShortSlide;-><init>(I)V

    iput v2, v4, Landroidx/leanback/transition/FadeAndShortSlide;->ʽʽ:F

    new-instance v2, Lﹳʽ/ˊʻ;

    invoke-direct {v2, p0}, Lﹳʽ/ˊʻ;-><init>(Landroidx/leanback/widget/ˑٴ;)V

    new-instance v5, Lˑʼ/ـﹶ;

    const/4 v6, 0x2

    invoke-direct {v5, v6, v2}, Lˑʼ/ـﹶ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroidx/leanback/transition/FadeAndShortSlide;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    new-instance v2, Landroid/transition/ChangeTransform;

    invoke-direct {v2}, Landroid/transition/ChangeTransform;-><init>()V

    new-instance v5, Landroidx/leanback/transition/ﹳٴ;

    invoke-direct {v5}, Landroidx/leanback/transition/ﹳٴ;-><init>()V

    invoke-virtual {v5, v1}, Landroid/transition/ChangeBounds;->setReparent(Z)V

    new-instance v6, Landroid/transition/Fade;

    const/4 v7, 0x3

    invoke-direct {v6, v7}, Landroid/transition/Fade;-><init>(I)V

    new-instance v7, Landroidx/leanback/transition/ﹳٴ;

    invoke-direct {v7}, Landroidx/leanback/transition/ﹳٴ;-><init>()V

    invoke-virtual {v7, v1}, Landroid/transition/ChangeBounds;->setReparent(Z)V

    const-wide/16 v8, 0x64

    if-nez p1, :cond_4

    const-wide/16 v10, 0x96

    invoke-virtual {v4, v10, v11}, Landroid/transition/Transition;->setStartDelay(J)Landroid/transition/Transition;

    invoke-virtual {v2, v8, v9}, Landroid/transition/Transition;->setStartDelay(J)Landroid/transition/Transition;

    invoke-virtual {v5, v8, v9}, Landroid/transition/Transition;->setStartDelay(J)Landroid/transition/Transition;

    invoke-virtual {v7, v8, v9}, Landroid/transition/Transition;->setStartDelay(J)Landroid/transition/Transition;

    goto :goto_2

    :cond_4
    invoke-virtual {v6, v8, v9}, Landroid/transition/Transition;->setStartDelay(J)Landroid/transition/Transition;

    const-wide/16 v8, 0x32

    invoke-virtual {v7, v8, v9}, Landroid/transition/Transition;->setStartDelay(J)Landroid/transition/Transition;

    invoke-virtual {v2, v8, v9}, Landroid/transition/Transition;->setStartDelay(J)Landroid/transition/Transition;

    invoke-virtual {v5, v8, v9}, Landroid/transition/Transition;->setStartDelay(J)Landroid/transition/Transition;

    :goto_2
    if-ge v1, v0, :cond_6

    iget-object v2, p0, Landroidx/leanback/widget/ˑٴ;->ⁱˊ:Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->ˆﾞ(Landroid/view/View;)Lˋˋ/ʼـ;

    move-result-object v2

    check-cast v2, Landroidx/leanback/widget/ˈʿ;

    if-ne v2, v3, :cond_5

    goto :goto_3

    :cond_5
    iget-object v5, v2, Lˋˋ/ʼـ;->ʾˋ:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    iget-object v2, v2, Lˋˋ/ʼـ;->ʾˋ:Landroid/view/View;

    const/4 v5, 0x1

    invoke-virtual {v6, v2, v5}, Landroid/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    iget-object v0, p0, Landroidx/leanback/widget/ˑٴ;->ʽ:Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {v7, v0}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    iget-object v0, p0, Landroidx/leanback/widget/ˑٴ;->ˈ:Landroid/view/View;

    invoke-virtual {v7, v0}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    invoke-virtual {p2, v4}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    invoke-virtual {p2, v6}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    invoke-virtual {p2, v7}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    iput-object p2, p0, Landroidx/leanback/widget/ˑٴ;->יـ:Landroid/transition/TransitionSet;

    new-instance v0, Lﹳי/ʽ;

    invoke-direct {v0, p0}, Lﹳי/ʽ;-><init>(Ljava/lang/Object;)V

    new-instance v1, Landroidx/leanback/transition/ᵔᵢ;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Landroidx/leanback/transition/ᵔᵢ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, v1}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    iget-object p2, p0, Landroidx/leanback/widget/ˑٴ;->ﹳٴ:Landroid/view/ViewGroup;

    iget-object v0, p0, Landroidx/leanback/widget/ˑٴ;->יـ:Landroid/transition/TransitionSet;

    invoke-static {p2, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    :cond_7
    const/4 p2, 0x0

    if-nez p1, :cond_8

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/leanback/widget/ˑٴ;->ﹳᐧ:Landroidx/leanback/widget/ʾᵎ;

    iget-object p1, p0, Landroidx/leanback/widget/ˑٴ;->ⁱˊ:Landroidx/leanback/widget/VerticalGridView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/ᵔᵢ;->setPruneChild(Z)V

    goto :goto_4

    :cond_8
    iget-object p1, p1, Landroidx/leanback/widget/ˈʿ;->ﹳـ:Landroidx/leanback/widget/ʾᵎ;

    iget-object v0, p0, Landroidx/leanback/widget/ˑٴ;->ﹳᐧ:Landroidx/leanback/widget/ʾᵎ;

    if-eq p1, v0, :cond_9

    iput-object p1, p0, Landroidx/leanback/widget/ˑٴ;->ﹳᐧ:Landroidx/leanback/widget/ʾᵎ;

    iget-object p1, p0, Landroidx/leanback/widget/ˑٴ;->ⁱˊ:Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {p1, p2}, Landroidx/leanback/widget/ᵔᵢ;->setPruneChild(Z)V

    :cond_9
    :goto_4
    iget-object p1, p0, Landroidx/leanback/widget/ˑٴ;->ⁱˊ:Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {p1, p2}, Landroidx/leanback/widget/ᵔᵢ;->setAnimateChildLayout(Z)V

    iget-object p1, p0, Landroidx/leanback/widget/ˑٴ;->ⁱˊ:Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    :goto_5
    if-ge p2, p1, :cond_a

    iget-object v0, p0, Landroidx/leanback/widget/ˑٴ;->ⁱˊ:Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->ˆﾞ(Landroid/view/View;)Lˋˋ/ʼـ;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/ˈʿ;

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/ˑٴ;->ʼˎ(Landroidx/leanback/widget/ˈʿ;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_a
    return-void
.end method

.method public ⁱˊ(Landroidx/leanback/widget/ˈʿ;Z)V
    .locals 0

    invoke-virtual {p1, p2}, Landroidx/leanback/widget/ˈʿ;->יـ(Z)V

    return-void
.end method

.method public final ﹳٴ(Z)V
    .locals 3

    .prologue
    iget-object v0, p0, Landroidx/leanback/widget/ˑٴ;->יـ:Landroid/transition/TransitionSet;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/ˑٴ;->ﹳᐧ:Landroidx/leanback/widget/ʾᵎ;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/leanback/widget/ˑٴ;->ⁱˊ:Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Lˋˋ/ᴵˑ;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/ˊʻ;

    iget-object v1, p0, Landroidx/leanback/widget/ˑٴ;->ﹳᐧ:Landroidx/leanback/widget/ʾᵎ;

    iget-object v0, v0, Landroidx/leanback/widget/ˊʻ;->ˆʾ:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_2

    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Landroidx/leanback/widget/ˑٴ;->ﹳᐧ:Landroidx/leanback/widget/ʾᵎ;

    invoke-virtual {v1}, Landroidx/leanback/widget/ʾᵎ;->ﹳٴ()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/leanback/widget/ˑٴ;->ⁱˊ:Landroidx/leanback/widget/VerticalGridView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->ᵎⁱ(IZ)Lˋˋ/ʼـ;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/ˈʿ;

    invoke-virtual {p0, v0, v2, p1}, Landroidx/leanback/widget/ˑٴ;->ᵎﹶ(Landroidx/leanback/widget/ˈʿ;ZZ)V

    return-void

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroidx/leanback/widget/ˑٴ;->ᵔᵢ(Landroidx/leanback/widget/ˈʿ;Z)V

    return-void
.end method

.method public ﾞᴵ()I
    .locals 1

    const v0, 0x7f0e00a4

    return v0
.end method
