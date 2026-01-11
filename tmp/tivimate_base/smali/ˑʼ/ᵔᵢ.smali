.class public final Lˑʼ/ᵔᵢ;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic ʽ:Z

.field public final synthetic ˈ:Lˑʼ/ʽᵔ;

.field public final synthetic ˑﹳ:Lˑʼ/ʼˎ;

.field public final synthetic ⁱˊ:Landroid/view/View;

.field public final synthetic ﹳٴ:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;ZLˑʼ/ʽᵔ;Lˑʼ/ʼˎ;)V
    .locals 0

    iput-object p1, p0, Lˑʼ/ᵔᵢ;->ﹳٴ:Landroid/view/ViewGroup;

    iput-object p2, p0, Lˑʼ/ᵔᵢ;->ⁱˊ:Landroid/view/View;

    iput-boolean p3, p0, Lˑʼ/ᵔᵢ;->ʽ:Z

    iput-object p4, p0, Lˑʼ/ᵔᵢ;->ˈ:Lˑʼ/ʽᵔ;

    iput-object p5, p0, Lˑʼ/ᵔᵢ;->ˑﹳ:Lˑʼ/ʼˎ;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    iget-object p1, p0, Lˑʼ/ᵔᵢ;->ﹳٴ:Landroid/view/ViewGroup;

    iget-object v0, p0, Lˑʼ/ᵔᵢ;->ⁱˊ:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-boolean v1, p0, Lˑʼ/ᵔᵢ;->ʽ:Z

    iget-object v2, p0, Lˑʼ/ᵔᵢ;->ˈ:Lˑʼ/ʽᵔ;

    if-nez v1, :cond_0

    iget v1, v2, Lˑʼ/ʽᵔ;->ﹳٴ:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    :cond_0
    iget v1, v2, Lˑʼ/ʽᵔ;->ﹳٴ:I

    invoke-static {v1, v0, p1}, Lˉˆ/ٴᴵ;->ⁱˊ(ILandroid/view/View;Landroid/view/ViewGroup;)V

    :cond_1
    iget-object p1, p0, Lˑʼ/ᵔᵢ;->ˑﹳ:Lˑʼ/ʼˎ;

    iget-object v0, p1, Lˑʼ/ʼˎ;->ʽ:Lˑʼ/ᵎﹶ;

    iget-object v0, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lˑʼ/ʽᵔ;

    invoke-virtual {v0, p1}, Lˑʼ/ʽᵔ;->ʽ(Lˑʼ/ـᵎ;)V

    const/4 p1, 0x2

    invoke-static {p1}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Animator from operation "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " has ended."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FragmentManager"

    nop

    :cond_2
    return-void
.end method
