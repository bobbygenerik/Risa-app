.class public final Lˑʼ/ˋᵔ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/יـ;


# instance fields
.field public final synthetic ʽʽ:Ljava/lang/Object;

.field public final synthetic ʾˋ:I

.field public final synthetic ˈٴ:Ljava/lang/Object;

.field public final synthetic ᴵˊ:Ljava/lang/String;

.field public final synthetic ᴵᵔ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p5, p0, Lˑʼ/ˋᵔ;->ʾˋ:I

    iput-object p1, p0, Lˑʼ/ˋᵔ;->ᴵᵔ:Ljava/lang/Object;

    iput-object p2, p0, Lˑʼ/ˋᵔ;->ᴵˊ:Ljava/lang/String;

    iput-object p3, p0, Lˑʼ/ˋᵔ;->ʽʽ:Ljava/lang/Object;

    iput-object p4, p0, Lˑʼ/ˋᵔ;->ˈٴ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ᵎﹶ(Landroidx/lifecycle/ʽﹳ;Landroidx/lifecycle/ˉʿ;)V
    .locals 5

    .prologue
    iget p1, p0, Lˑʼ/ˋᵔ;->ʾˋ:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lˑʼ/ˋᵔ;->ˈٴ:Ljava/lang/Object;

    check-cast p1, Lcom/bumptech/glide/ˈ;

    iget-object v0, p0, Lˑʼ/ˋᵔ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lˑﹳ/ⁱˊ;

    iget-object v1, p0, Lˑʼ/ˋᵔ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v1, Lʽ/ﾞᴵ;

    sget-object v2, Landroidx/lifecycle/ˉʿ;->ON_START:Landroidx/lifecycle/ˉʿ;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, p0, Lˑʼ/ˋᵔ;->ᴵˊ:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object p2, v1, Lʽ/ﾞᴵ;->ˑﹳ:Ljava/util/HashMap;

    iget-object v2, v1, Lʽ/ﾞᴵ;->ᵎﹶ:Landroid/os/Bundle;

    iget-object v1, v1, Lʽ/ﾞᴵ;->ﾞᴵ:Ljava/util/HashMap;

    new-instance v4, Lˑﹳ/ˑﹳ;

    invoke-direct {v4, p1, v0}, Lˑﹳ/ˑﹳ;-><init>(Lcom/bumptech/glide/ˈ;Lˑﹳ/ⁱˊ;)V

    invoke-virtual {p2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, p2}, Lˑﹳ/ⁱˊ;->ᵔᵢ(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lˑﹳ/ﹳٴ;

    if-eqz p2, :cond_3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    iget v1, p2, Lˑﹳ/ﹳٴ;->ʾˋ:I

    iget-object p2, p2, Lˑﹳ/ﹳٴ;->ᴵˊ:Landroid/content/Intent;

    invoke-virtual {p1, p2, v1}, Lcom/bumptech/glide/ˈ;->ᴵˊ(Landroid/content/Intent;I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lˑﹳ/ⁱˊ;->ᵔᵢ(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget-object p1, Landroidx/lifecycle/ˉʿ;->ON_STOP:Landroidx/lifecycle/ˉʿ;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, v1, Lʽ/ﾞᴵ;->ˑﹳ:Ljava/util/HashMap;

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    sget-object p1, Landroidx/lifecycle/ˉʿ;->ON_DESTROY:Landroidx/lifecycle/ˉʿ;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v1, v3}, Lʽ/ﾞᴵ;->ﾞᴵ(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void

    :pswitch_0
    iget-object p1, p0, Lˑʼ/ˋᵔ;->ᴵᵔ:Ljava/lang/Object;

    check-cast p1, Lˑʼ/ʿ;

    iget-object v0, p1, Lˑʼ/ʿ;->ˉʿ:Ljava/util/Map;

    sget-object v1, Landroidx/lifecycle/ˉʿ;->ON_START:Landroidx/lifecycle/ˉʿ;

    iget-object v2, p0, Lˑʼ/ˋᵔ;->ᴵˊ:Ljava/lang/String;

    if-ne p2, v1, :cond_4

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    if-eqz v1, :cond_4

    iget-object v3, p0, Lˑʼ/ˋᵔ;->ʽʽ:Ljava/lang/Object;

    check-cast v3, Lˑʼ/ᐧᴵ;

    invoke-interface {v3, v2, v1}, Lˑʼ/ᐧᴵ;->ﹳٴ(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    invoke-static {v0}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Clearing fragment result with key "

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    nop

    :cond_4
    sget-object v0, Landroidx/lifecycle/ˉʿ;->ON_DESTROY:Landroidx/lifecycle/ˉʿ;

    if-ne p2, v0, :cond_5

    iget-object p2, p0, Lˑʼ/ˋᵔ;->ˈٴ:Ljava/lang/Object;

    check-cast p2, Landroidx/lifecycle/ـˆ;

    invoke-virtual {p2, p0}, Landroidx/lifecycle/ـˆ;->ﾞᴵ(Landroidx/lifecycle/ˏי;)V

    iget-object p1, p1, Lˑʼ/ʿ;->ᵔʾ:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
