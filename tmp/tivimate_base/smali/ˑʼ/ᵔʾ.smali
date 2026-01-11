.class public final Lˑʼ/ᵔʾ;
.super Lˊʼ/ٴﹶ;
.source "SourceFile"

# interfaces
.implements Lᴵⁱ/ﹳٴ;


# instance fields
.field public final synthetic ʽʽ:Landroid/view/ViewGroup;

.field public final synthetic ˈٴ:Ljava/lang/Object;

.field public final synthetic ᴵˊ:Lˑʼ/ˉˆ;

.field public final synthetic ᴵᵔ:Lˊʼ/ˏי;


# direct methods
.method public constructor <init>(Lˑʼ/ˉˆ;Landroid/view/ViewGroup;Ljava/lang/Object;Lˊʼ/ˏי;)V
    .locals 0

    iput-object p1, p0, Lˑʼ/ᵔʾ;->ᴵˊ:Lˑʼ/ˉˆ;

    iput-object p2, p0, Lˑʼ/ᵔʾ;->ʽʽ:Landroid/view/ViewGroup;

    iput-object p3, p0, Lˑʼ/ᵔʾ;->ˈٴ:Ljava/lang/Object;

    iput-object p4, p0, Lˑʼ/ᵔʾ;->ᴵᵔ:Lˊʼ/ˏי;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lˊʼ/ٴﹶ;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final ʽ()Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v0, 0x2

    invoke-static {v0}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    if-eqz v1, :cond_0

    const-string v1, "Attempting to create TransitionSeekController"

    nop

    :cond_0
    iget-object v1, p0, Lˑʼ/ᵔʾ;->ᴵˊ:Lˑʼ/ˉˆ;

    iget-object v3, v1, Lˑʼ/ˉˆ;->ﾞᴵ:Lˑʼ/ˑʼ;

    iget-object v4, p0, Lˑʼ/ᵔʾ;->ʽʽ:Landroid/view/ViewGroup;

    iget-object v5, p0, Lˑʼ/ᵔʾ;->ˈٴ:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lˑʼ/ˑʼ;->ʼˎ(Landroid/view/ViewGroup;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v1, Lˑʼ/ˉˆ;->ᵔﹳ:Ljava/lang/Object;

    if-nez v3, :cond_2

    invoke-static {v0}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "TransitionSeekController was not created."

    nop

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, v1, Lˑʼ/ˉˆ;->ﹳᐧ:Z

    goto :goto_0

    :cond_2
    new-instance v3, Lˑʼ/ˉʿ;

    invoke-direct {v3, v1, v5, v4}, Lˑʼ/ˉʿ;-><init>(Lˑʼ/ˉˆ;Ljava/lang/Object;Landroid/view/ViewGroup;)V

    iget-object v4, p0, Lˑʼ/ᵔʾ;->ᴵᵔ:Lˊʼ/ˏי;

    iput-object v3, v4, Lˊʼ/ˏי;->ʾˋ:Ljava/lang/Object;

    invoke-static {v0}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Started executing operations from "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lˑʼ/ˉˆ;->ˈ:Lˑʼ/ʽᵔ;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lˑʼ/ˉˆ;->ˑﹳ:Lˑʼ/ʽᵔ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    :cond_3
    :goto_0
    sget-object v0, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object v0
.end method
