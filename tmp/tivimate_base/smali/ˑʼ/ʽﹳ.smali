.class public final Lˑʼ/ʽﹳ;
.super Lʼ/ᵎﹶ;
.source "SourceFile"


# instance fields
.field public final synthetic ˉٴ:Lˑʼ/ʻٴ;

.field public final synthetic ٴᵢ:Lˑʼ/ᵢˏ;


# direct methods
.method public constructor <init>(Lˑʼ/ʻٴ;Lˑʼ/ᵢˏ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˑʼ/ʽﹳ;->ˉٴ:Lˑʼ/ʻٴ;

    iput-object p2, p0, Lˑʼ/ʽﹳ;->ٴᵢ:Lˑʼ/ᵢˏ;

    return-void
.end method


# virtual methods
.method public final ʼʼ(I)Landroid/view/View;
    .locals 2

    .prologue
    iget-object v0, p0, Lˑʼ/ʽﹳ;->ٴᵢ:Lˑʼ/ᵢˏ;

    invoke-virtual {v0}, Lˑʼ/ᵢˏ;->ᵢˏ()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lˑʼ/ᵢˏ;->ʼʼ(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lˑʼ/ʽﹳ;->ˉٴ:Lˑʼ/ʻٴ;

    iget-object v0, v0, Lˑʼ/ʻٴ;->ⁱᴵ:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final ᵢˏ()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lˑʼ/ʽﹳ;->ٴᵢ:Lˑʼ/ᵢˏ;

    invoke-virtual {v0}, Lˑʼ/ᵢˏ;->ᵢˏ()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lˑʼ/ʽﹳ;->ˉٴ:Lˑʼ/ʻٴ;

    iget-boolean v0, v0, Lˑʼ/ʻٴ;->ʼᵢ:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
