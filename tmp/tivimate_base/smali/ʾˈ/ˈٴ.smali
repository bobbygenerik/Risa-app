.class public final Lʾˈ/ˈٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﾞﹶ/ⁱˊ;


# instance fields
.field public final ʽʽ:Lʾﹶ/ʽ;

.field public final synthetic ʾˋ:I

.field public final ᴵˊ:Lᵎˋ/ﹳٴ;


# direct methods
.method public constructor <init>(Lʾﹶ/ʽ;Lﾞﹶ/ʽ;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lʾˈ/ˈٴ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʾˈ/ˈٴ;->ʽʽ:Lʾﹶ/ʽ;

    iput-object p2, p0, Lʾˈ/ˈٴ;->ᴵˊ:Lᵎˋ/ﹳٴ;

    return-void
.end method

.method public constructor <init>(Lﾞﹶ/ʽ;Lʾﹶ/ʽ;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lʾˈ/ˈٴ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʾˈ/ˈٴ;->ᴵˊ:Lᵎˋ/ﹳٴ;

    iput-object p2, p0, Lʾˈ/ˈٴ;->ʽʽ:Lʾﹶ/ʽ;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    .prologue
    iget v0, p0, Lʾˈ/ˈٴ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lʾˈ/ˈٴ;->ᴵˊ:Lᵎˋ/ﹳٴ;

    invoke-interface {v0}, Lᵎˋ/ﹳٴ;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lʾˈ/ⁱˊ;

    iget-object v1, p0, Lʾˈ/ˈٴ;->ʽʽ:Lʾﹶ/ʽ;

    iget-object v1, v1, Lʾﹶ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lˈי/ᵔᵢ;

    new-instance v2, Lᵎʽ/ˈ;

    invoke-direct {v2, v0, v1}, Lᵎʽ/ˈ;-><init>(Lʾˈ/ⁱˊ;Lˈי/ᵔᵢ;)V

    return-object v2

    :pswitch_0
    iget-object v0, p0, Lʾˈ/ˈٴ;->ʽʽ:Lʾﹶ/ʽ;

    iget-object v0, v0, Lʾﹶ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lʾˈ/ˈٴ;->ᴵˊ:Lᵎˋ/ﹳٴ;

    invoke-interface {v1}, Lᵎˋ/ﹳٴ;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lʾˈ/ﹶᐧ;

    new-instance v2, Lʾˈ/ʽʽ;

    invoke-direct {v2, v0, v1}, Lʾˈ/ʽʽ;-><init>(Landroid/content/Context;Lʾˈ/ﹶᐧ;)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
