.class public final Lᵔᵢ/ٴᵢ;
.super Lˈˋ/ʾˊ;
.source "SourceFile"


# instance fields
.field public final synthetic ʽ:I

.field public final synthetic ˈ:Lᵔᵢ/ᵎⁱ;


# direct methods
.method public synthetic constructor <init>(Lᵔᵢ/ᵎⁱ;I)V
    .locals 0

    iput p2, p0, Lᵔᵢ/ٴᵢ;->ʽ:I

    iput-object p1, p0, Lᵔᵢ/ٴᵢ;->ˈ:Lᵔᵢ/ᵎⁱ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ʽ()V
    .locals 4

    .prologue
    iget v0, p0, Lᵔᵢ/ٴᵢ;->ʽ:I

    const/4 v1, 0x0

    iget-object v2, p0, Lᵔᵢ/ٴᵢ;->ˈ:Lᵔᵢ/ᵎⁱ;

    packed-switch v0, :pswitch_data_0

    iput-object v1, v2, Lᵔᵢ/ᵎⁱ;->ʼʼ:Lˉʿ/ˆʾ;

    iget-object v0, v2, Lᵔᵢ/ᵎⁱ;->ˆʾ:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void

    :pswitch_0
    iget-boolean v0, v2, Lᵔᵢ/ᵎⁱ;->ʽﹳ:Z

    if-eqz v0, :cond_0

    iget-object v0, v2, Lᵔᵢ/ᵎⁱ;->ˉʿ:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, v2, Lᵔᵢ/ᵎⁱ;->ˆʾ:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    iget-object v0, v2, Lᵔᵢ/ᵎⁱ;->ˆʾ:Landroidx/appcompat/widget/ActionBarContainer;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    iget-object v0, v2, Lᵔᵢ/ᵎⁱ;->ˆʾ:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    iput-object v1, v2, Lᵔᵢ/ᵎⁱ;->ʼʼ:Lˉʿ/ˆʾ;

    iget-object v0, v2, Lᵔᵢ/ᵎⁱ;->ᵔﹳ:Lˑʼ/ᵎˊ;

    if-eqz v0, :cond_1

    iget-object v3, v2, Lᵔᵢ/ᵎⁱ;->ʼᐧ:Lᵔᵢ/ˉٴ;

    invoke-virtual {v0, v3}, Lˑʼ/ᵎˊ;->ᵎˊ(Lˉʿ/ﹳٴ;)V

    iput-object v1, v2, Lᵔᵢ/ᵎⁱ;->ʼᐧ:Lᵔᵢ/ˉٴ;

    iput-object v1, v2, Lᵔᵢ/ᵎⁱ;->ᵔﹳ:Lˑʼ/ᵎˊ;

    :cond_1
    iget-object v0, v2, Lᵔᵢ/ᵎⁱ;->ʼˎ:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_2

    sget-object v1, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-static {v0}, Lˋᵔ/ʾˋ;->ʽ(Landroid/view/View;)V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
