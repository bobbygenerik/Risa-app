.class public final Lʻʿ/ˉˆ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ⁱˊ:I

.field public ﹳٴ:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    iput p1, p0, Lʻʿ/ˉˆ;->ﹳٴ:I

    iput p2, p0, Lʻʿ/ˉˆ;->ⁱˊ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ⁱˊ(Lˋˋ/ʼـ;)V
    .locals 1

    iget-object p1, p1, Lˋˋ/ʼـ;->ʾˋ:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lʻʿ/ˉˆ;->ﹳٴ:I

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lʻʿ/ˉˆ;->ⁱˊ:I

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    return-void
.end method

.method public ﹳٴ()I
    .locals 2

    .prologue
    iget v0, p0, Lʻʿ/ˉˆ;->ⁱˊ:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_3

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x16

    if-eq v0, v1, :cond_1

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/16 v0, 0xf

    return v0

    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    return v0

    :cond_2
    const/16 v0, 0x10

    return v0

    :cond_3
    const/16 v0, 0xc

    return v0

    :cond_4
    const/16 v0, 0xb

    return v0

    :cond_5
    const/16 v0, 0xa

    return v0
.end method
