.class public final Landroidx/lifecycle/ﾞᴵ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/יـ;


# instance fields
.field public final ʽʽ:Ljava/lang/Object;

.field public final synthetic ʾˋ:I

.field public final ᴵˊ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/ˏי;)V
    .locals 2

    .prologue
    const/4 v0, 0x2

    iput v0, p0, Landroidx/lifecycle/ﾞᴵ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/ﾞᴵ;->ᴵˊ:Ljava/lang/Object;

    sget-object v0, Landroidx/lifecycle/ˈ;->ʽ:Landroidx/lifecycle/ˈ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    iget-object v1, v0, Landroidx/lifecycle/ˈ;->ﹳٴ:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/ⁱˊ;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/lifecycle/ˈ;->ﹳٴ(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Landroidx/lifecycle/ⁱˊ;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Landroidx/lifecycle/ﾞᴵ;->ʽʽ:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Landroidx/lifecycle/ﾞᴵ;->ʾˋ:I

    iput-object p1, p0, Landroidx/lifecycle/ﾞᴵ;->ᴵˊ:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/lifecycle/ﾞᴵ;->ʽʽ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ᵎﹶ(Landroidx/lifecycle/ʽﹳ;Landroidx/lifecycle/ˉʿ;)V
    .locals 5

    .prologue
    iget v0, p0, Landroidx/lifecycle/ﾞᴵ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/lifecycle/ﾞᴵ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/ⁱˊ;

    iget-object v1, p0, Landroidx/lifecycle/ﾞᴵ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Landroidx/lifecycle/ˏי;

    iget-object v0, v0, Landroidx/lifecycle/ⁱˊ;->ﹳٴ:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2, p1, p2, v1}, Landroidx/lifecycle/ⁱˊ;->ﹳٴ(Ljava/util/List;Landroidx/lifecycle/ʽﹳ;Landroidx/lifecycle/ˉʿ;Landroidx/lifecycle/ˏי;)V

    sget-object v2, Landroidx/lifecycle/ˉʿ;->ON_ANY:Landroidx/lifecycle/ˉʿ;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0, p1, p2, v1}, Landroidx/lifecycle/ⁱˊ;->ﹳٴ(Ljava/util/List;Landroidx/lifecycle/ʽﹳ;Landroidx/lifecycle/ˉʿ;Landroidx/lifecycle/ˏי;)V

    return-void

    :pswitch_0
    sget-object p1, Landroidx/lifecycle/ˉʿ;->ON_START:Landroidx/lifecycle/ˉʿ;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Landroidx/lifecycle/ﾞᴵ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Landroidx/lifecycle/ـˆ;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/ـˆ;->ﾞᴵ(Landroidx/lifecycle/ˏי;)V

    iget-object p1, p0, Landroidx/lifecycle/ﾞᴵ;->ʽʽ:Ljava/lang/Object;

    check-cast p1, Lˑʼ/ᵎˊ;

    invoke-virtual {p1}, Lˑʼ/ᵎˊ;->ـˏ()V

    :cond_0
    return-void

    :pswitch_1
    iget-object v0, p0, Landroidx/lifecycle/ﾞᴵ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʿˋ/ʽﹳ;

    sget-object v1, Landroidx/lifecycle/ˑﹳ;->ﹳٴ:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ON_ANY must not been send by anybody"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_3
    iget v1, v0, Lʿˋ/ʽﹳ;->ʾˋ:I

    packed-switch v1, :pswitch_data_2

    goto :goto_1

    :pswitch_4
    iget-object v0, v0, Lʿˋ/ʽﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lٴʽ/יـ;

    const/4 v1, 0x0

    iput-object v1, v0, Lٴʽ/יـ;->ʽ:Ljava/lang/Object;

    goto :goto_1

    :pswitch_5
    iget v1, v0, Lʿˋ/ʽﹳ;->ʾˋ:I

    packed-switch v1, :pswitch_data_3

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Lـﹶ/ⁱˊ;->ﹳٴ(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :goto_0
    new-instance v2, Lـﹶ/ˉʿ;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lـﹶ/ˉʿ;-><init>(I)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v1, v0, Lʿˋ/ʽﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Landroidx/lifecycle/ـˆ;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/ـˆ;->ﾞᴵ(Landroidx/lifecycle/ˏי;)V

    :goto_1
    :pswitch_6
    iget-object v0, p0, Landroidx/lifecycle/ﾞᴵ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/יـ;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2}, Landroidx/lifecycle/יـ;->ᵎﹶ(Landroidx/lifecycle/ʽﹳ;Landroidx/lifecycle/ˉʿ;)V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method
