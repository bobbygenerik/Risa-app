.class public final Lˉˆ/ٴᵢ;
.super Lˉˆ/ˎᐧ;
.source "SourceFile"


# instance fields
.field public final synthetic ٴʼ:Lˉˆ/ˆﾞ;

.field public final synthetic ᵎˊ:Lˉˆ/ˑٴ;


# direct methods
.method public constructor <init>(Lˉˆ/ˑٴ;Lˉˆ/ˑٴ;Lˉˆ/ˆﾞ;)V
    .locals 0

    iput-object p1, p0, Lˉˆ/ٴᵢ;->ᵎˊ:Lˉˆ/ˑٴ;

    iput-object p3, p0, Lˉˆ/ٴᵢ;->ٴʼ:Lˉˆ/ˆﾞ;

    invoke-direct {p0, p2}, Lˉˆ/ˎᐧ;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final ʽ()Z
    .locals 3

    .prologue
    iget-object v0, p0, Lˉˆ/ٴᵢ;->ᵎˊ:Lˉˆ/ˑٴ;

    invoke-virtual {v0}, Lˉˆ/ˑٴ;->getInternalPopup()Lˉˆ/ˈʿ;

    move-result-object v1

    invoke-interface {v1}, Lˉˆ/ˈʿ;->ﹳٴ()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lˉˆ/ˑٴ;->ˊʻ:Lˉˆ/ˈʿ;

    invoke-virtual {v0}, Landroid/view/View;->getTextDirection()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getTextAlignment()I

    move-result v0

    invoke-interface {v1, v2, v0}, Lˉˆ/ˈʿ;->ˉʿ(II)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final ⁱˊ()Lᵔʾ/ʼʼ;
    .locals 1

    iget-object v0, p0, Lˉˆ/ٴᵢ;->ٴʼ:Lˉˆ/ˆﾞ;

    return-object v0
.end method
