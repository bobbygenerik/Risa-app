.class public final Lʾˈ/ˈⁱ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﾞﹶ/ⁱˊ;


# instance fields
.field public final ʽʽ:Lﾞﹶ/ʽ;

.field public final synthetic ʾˋ:I

.field public final ᴵˊ:Lᵎˋ/ﹳٴ;


# direct methods
.method public synthetic constructor <init>(Lﾞﹶ/ʽ;Lﾞﹶ/ʽ;I)V
    .locals 0

    iput p3, p0, Lʾˈ/ˈⁱ;->ʾˋ:I

    iput-object p1, p0, Lʾˈ/ˈⁱ;->ᴵˊ:Lᵎˋ/ﹳٴ;

    iput-object p2, p0, Lʾˈ/ˈⁱ;->ʽʽ:Lﾞﹶ/ʽ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    .prologue
    iget v0, p0, Lʾˈ/ˈⁱ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lʾˈ/ˈⁱ;->ᴵˊ:Lᵎˋ/ﹳٴ;

    invoke-interface {v0}, Lᵎˋ/ﹳٴ;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lᵎʽ/ˉˆ;

    iget-object v1, p0, Lʾˈ/ˈⁱ;->ʽʽ:Lﾞﹶ/ʽ;

    invoke-interface {v1}, Lᵎˋ/ﹳٴ;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lᵎʽ/ˉˆ;

    new-instance v2, Lᵎʽ/ˆʾ;

    invoke-direct {v2, v0, v1}, Lᵎʽ/ˆʾ;-><init>(Lᵎʽ/ˉˆ;Lᵎʽ/ˉˆ;)V

    return-object v2

    :pswitch_0
    iget-object v0, p0, Lʾˈ/ˈⁱ;->ᴵˊ:Lᵎˋ/ﹳٴ;

    invoke-interface {v0}, Lᵎˋ/ﹳٴ;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lʾˈ/ˈˏ;

    iget-object v1, p0, Lʾˈ/ˈⁱ;->ʽʽ:Lﾞﹶ/ʽ;

    invoke-interface {v1}, Lᵎˋ/ﹳٴ;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lʾˈ/ﹶᐧ;

    new-instance v2, Lʾˈ/ﹳـ;

    invoke-direct {v2, v0, v1}, Lʾˈ/ﹳـ;-><init>(Lʾˈ/ˈˏ;Lʾˈ/ﹶᐧ;)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
