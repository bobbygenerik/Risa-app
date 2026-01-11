.class public Landroidx/leanback/preference/internal/OutlineOnlyWithChildrenFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public ʾˋ:Lˆᵢ/ʽ;

.field public ᴵˊ:Landroid/view/ViewOutlineProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/view/View;->invalidateOutline()V

    return-void
.end method

.method public setOutlineProvider(Landroid/view/ViewOutlineProvider;)V
    .locals 1

    .prologue
    iput-object p1, p0, Landroidx/leanback/preference/internal/OutlineOnlyWithChildrenFrameLayout;->ᴵˊ:Landroid/view/ViewOutlineProvider;

    iget-object p1, p0, Landroidx/leanback/preference/internal/OutlineOnlyWithChildrenFrameLayout;->ʾˋ:Lˆᵢ/ʽ;

    if-nez p1, :cond_0

    new-instance p1, Lˆᵢ/ʽ;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lˆᵢ/ʽ;-><init>(Landroid/view/View;I)V

    iput-object p1, p0, Landroidx/leanback/preference/internal/OutlineOnlyWithChildrenFrameLayout;->ʾˋ:Lˆᵢ/ʽ;

    :cond_0
    iget-object p1, p0, Landroidx/leanback/preference/internal/OutlineOnlyWithChildrenFrameLayout;->ʾˋ:Lˆᵢ/ʽ;

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method
