.class public final Lˑʼ/ˑﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic ʽ:Landroid/view/View;

.field public final synthetic ˈ:Lˑʼ/ﾞᴵ;

.field public final synthetic ⁱˊ:Landroid/view/ViewGroup;

.field public final synthetic ﹳٴ:Lˑʼ/ʽᵔ;


# direct methods
.method public constructor <init>(Lˑʼ/ʽᵔ;Landroid/view/ViewGroup;Landroid/view/View;Lˑʼ/ﾞᴵ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˑʼ/ˑﹳ;->ﹳٴ:Lˑʼ/ʽᵔ;

    iput-object p2, p0, Lˑʼ/ˑﹳ;->ⁱˊ:Landroid/view/ViewGroup;

    iput-object p3, p0, Lˑʼ/ˑﹳ;->ʽ:Landroid/view/View;

    iput-object p4, p0, Lˑʼ/ˑﹳ;->ˈ:Lˑʼ/ﾞᴵ;

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    .prologue
    new-instance p1, Lcom/parse/ˊﾞ;

    const/4 v0, 0x3

    iget-object v1, p0, Lˑʼ/ˑﹳ;->ⁱˊ:Landroid/view/ViewGroup;

    iget-object v2, p0, Lˑʼ/ˑﹳ;->ʽ:Landroid/view/View;

    iget-object v3, p0, Lˑʼ/ˑﹳ;->ˈ:Lˑʼ/ﾞᴵ;

    invoke-direct {p1, v1, v2, v3, v0}, Lcom/parse/ˊﾞ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x2

    invoke-static {p1}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Animation from operation "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lˑʼ/ˑﹳ;->ﹳٴ:Lˑʼ/ʽᵔ;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " has ended."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FragmentManager"

    nop

    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    const/4 p1, 0x2

    invoke-static {p1}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Animation from operation "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lˑʼ/ˑﹳ;->ﹳٴ:Lˑʼ/ʽᵔ;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " has reached onAnimationStart."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FragmentManager"

    nop

    :cond_0
    return-void
.end method
