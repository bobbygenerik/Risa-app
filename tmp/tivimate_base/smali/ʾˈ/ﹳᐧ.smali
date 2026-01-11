.class public final Lʾˈ/ﹳᐧ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﾞﹶ/ⁱˊ;


# instance fields
.field public final synthetic ʾˋ:I

.field public final ᴵˊ:Lʾﹶ/ʽ;


# direct methods
.method public synthetic constructor <init>(Lʾﹶ/ʽ;I)V
    .locals 0

    iput p2, p0, Lʾˈ/ﹳᐧ;->ʾˋ:I

    iput-object p1, p0, Lʾˈ/ﹳᐧ;->ᴵˊ:Lʾﹶ/ʽ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .prologue
    iget v0, p0, Lʾˈ/ﹳᐧ;->ʾˋ:I

    iget-object v1, p0, Lʾˈ/ﹳᐧ;->ᴵˊ:Lʾﹶ/ʽ;

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Lʾﹶ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    new-instance v1, Lᵎʽ/ﹳٴ;

    invoke-direct {v1, v0}, Lᵎʽ/ﹳٴ;-><init>(Landroid/content/Context;)V

    return-object v1

    :pswitch_0
    iget-object v0, v1, Lʾﹶ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˉᵎ/ᵎﹶ;

    sget-object v1, Lʾˈ/ˑٴ;->ﹳٴ:Lʾˈ/ˑٴ;

    invoke-static {v0}, Lʾˈ/ˑٴ;->ﹳٴ(Lˉᵎ/ᵎﹶ;)Lʾˈ/ⁱˊ;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
