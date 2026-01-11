.class public final Lʿᵢ/ﾞʻ;
.super Lˊʼ/ٴﹶ;
.source "SourceFile"

# interfaces
.implements Lᴵⁱ/ﹳٴ;


# instance fields
.field public final synthetic ʽʽ:Lʿᵢ/ˈٴ;

.field public final synthetic ᴵˊ:I


# direct methods
.method public synthetic constructor <init>(Lʿᵢ/ˈٴ;I)V
    .locals 0

    iput p2, p0, Lʿᵢ/ﾞʻ;->ᴵˊ:I

    iput-object p1, p0, Lʿᵢ/ﾞʻ;->ʽʽ:Lʿᵢ/ˈٴ;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lˊʼ/ٴﹶ;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final ʽ()Ljava/lang/Object;
    .locals 2

    .prologue
    iget v0, p0, Lʿᵢ/ﾞʻ;->ᴵˊ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lʿᵢ/ﾞʻ;->ʽʽ:Lʿᵢ/ˈٴ;

    iget-object v0, v0, Lʿᵢ/ˈٴ;->ﹳٴ:Lʿᵢ/ﹶᐧ;

    invoke-interface {v0}, Lʿᵢ/ﹶᐧ;->ﹳٴ()Lʿᵢ/ᵔי;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lʿᵢ/ﾞʻ;->ʽʽ:Lʿᵢ/ˈٴ;

    iget-object v0, v0, Lʿᵢ/ˈٴ;->ˆʾ:Lʻᵢ/ʼˎ;

    invoke-virtual {v0}, Lʻᵢ/ʼˎ;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lʿᵢ/ᵔי;

    iget v1, v0, Lʿᵢ/ᵔי;->ﹳٴ:I

    packed-switch v1, :pswitch_data_1

    iget-object v0, v0, Lʿᵢ/ᵔי;->ⁱˊ:Lʿᵢ/ˑٴ;

    goto :goto_0

    :pswitch_1
    iget-object v0, v0, Lʿᵢ/ᵔי;->ⁱˊ:Lʿᵢ/ˑٴ;

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
