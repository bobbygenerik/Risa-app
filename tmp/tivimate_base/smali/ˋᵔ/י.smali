.class public Lˋᵔ/י;
.super Lᴵˋ/ˊʻ;
.source "SourceFile"


# instance fields
.field public final ʽ:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/view/Window;Lﹳˋ/ʼˎ;)V
    .locals 0

    const/16 p2, 0xa

    invoke-direct {p0, p2}, Lᴵˋ/ˊʻ;-><init>(I)V

    iput-object p1, p0, Lˋᵔ/י;->ʽ:Landroid/view/Window;

    return-void
.end method


# virtual methods
.method public final ʼˈ(I)V
    .locals 2

    iget-object v0, p0, Lˋᵔ/י;->ʽ:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    not-int p1, p1

    and-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public final ٴʼ(Z)V
    .locals 2

    .prologue
    const/16 v0, 0x2000

    if-eqz p1, :cond_0

    const/high16 p1, 0x4000000

    iget-object v1, p0, Lˋᵔ/י;->ʽ:Landroid/view/Window;

    invoke-virtual {v1, p1}, Landroid/view/Window;->clearFlags(I)V

    const/high16 p1, -0x80000000

    invoke-virtual {v1, p1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lˋᵔ/י;->ʼˈ(I)V

    return-void
.end method
