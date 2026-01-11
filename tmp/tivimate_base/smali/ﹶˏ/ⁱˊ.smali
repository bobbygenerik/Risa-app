.class public final Lﹶˏ/ⁱˊ;
.super Lʻᴵ/ﾞᴵ;
.source "SourceFile"


# instance fields
.field public final synthetic ʽʽ:I

.field public final synthetic ˈٴ:Lcom/google/android/material/carousel/CarouselLayoutManager;


# direct methods
.method public constructor <init>(Lcom/google/android/material/carousel/CarouselLayoutManager;I)V
    .locals 0

    .prologue
    iput p2, p0, Lﹶˏ/ⁱˊ;->ʽʽ:I

    packed-switch p2, :pswitch_data_0

    iput-object p1, p0, Lﹶˏ/ⁱˊ;->ˈٴ:Lcom/google/android/material/carousel/CarouselLayoutManager;

    const/4 p1, 0x4

    const/4 p2, 0x1

    invoke-direct {p0, p2, p1}, Lʻᴵ/ﾞᴵ;-><init>(II)V

    return-void

    :pswitch_0
    iput-object p1, p0, Lﹶˏ/ⁱˊ;->ˈٴ:Lcom/google/android/material/carousel/CarouselLayoutManager;

    const/4 p1, 0x4

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1}, Lʻᴵ/ﾞᴵ;-><init>(II)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final ʼˎ()I
    .locals 2

    .prologue
    iget v0, p0, Lﹶˏ/ⁱˊ;->ʽʽ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lﹶˏ/ⁱˊ;->ˈٴ:Lcom/google/android/material/carousel/CarouselLayoutManager;

    iget v0, v0, Lˋˋ/ʻᵎ;->ᵔʾ:I

    return v0

    :pswitch_0
    iget-object v0, p0, Lﹶˏ/ⁱˊ;->ˈٴ:Lcom/google/android/material/carousel/CarouselLayoutManager;

    iget v1, v0, Lˋˋ/ʻᵎ;->ᵔʾ:I

    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ᵎˊ()I

    move-result v0

    sub-int/2addr v1, v0

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ˆʾ()I
    .locals 2

    .prologue
    iget v0, p0, Lﹶˏ/ⁱˊ;->ʽʽ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lﹶˏ/ⁱˊ;->ˈٴ:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->ˎˉ()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, v0, Lˋˋ/ʻᵎ;->ᵔʾ:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ٴﹶ()I
    .locals 1

    .prologue
    iget v0, p0, Lﹶˏ/ⁱˊ;->ʽʽ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lﹶˏ/ⁱˊ;->ˈٴ:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ᵔי()I

    move-result v0

    return v0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ᵎﹶ()I
    .locals 2

    .prologue
    iget v0, p0, Lﹶˏ/ⁱˊ;->ʽʽ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lﹶˏ/ⁱˊ;->ˈٴ:Lcom/google/android/material/carousel/CarouselLayoutManager;

    iget v1, v0, Lˋˋ/ʻᵎ;->ˉˆ:I

    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ᵎⁱ()I

    move-result v0

    sub-int/2addr v1, v0

    return v1

    :pswitch_0
    iget-object v0, p0, Lﹶˏ/ⁱˊ;->ˈٴ:Lcom/google/android/material/carousel/CarouselLayoutManager;

    iget v0, v0, Lˋˋ/ʻᵎ;->ˉˆ:I

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ᵔᵢ()I
    .locals 1

    .prologue
    iget v0, p0, Lﹶˏ/ⁱˊ;->ʽʽ:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    iget-object v0, p0, Lﹶˏ/ⁱˊ;->ˈٴ:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ٴʼ()I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
