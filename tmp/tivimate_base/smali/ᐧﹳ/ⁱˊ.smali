.class public final Lᐧﹳ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﹶﾞ/ـˊ;


# instance fields
.field public final synthetic ⁱˊ:Ljava/lang/Object;

.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lᐧﹳ/ⁱˊ;->ﹳٴ:I

    iput-object p2, p0, Lᐧﹳ/ⁱˊ;->ⁱˊ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﹳٴ(JLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    iget v0, p0, Lᐧﹳ/ⁱˊ;->ﹳٴ:I

    iget-object v1, p0, Lᐧﹳ/ⁱˊ;->ⁱˊ:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    if-eqz p4, :cond_0

    sget-object p4, Lᐧﹳ/ﹳٴ;->ﹳٴ:Lʼʻ/ᵔٴ;

    invoke-virtual {p4, p5}, Lʼʻ/ˈٴ;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_0

    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "name"

    invoke-virtual {p4, v0, p5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p5, "timestampInMillis"

    invoke-virtual {p4, p5, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "params"

    invoke-virtual {p4, p1, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    check-cast v1, Lᐧﹳ/ʽ;

    iget-object p1, v1, Lᐧﹳ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Lˑʼ/ᵎˊ;

    const/4 p2, 0x3

    invoke-virtual {p1, p2, p4}, Lˑʼ/ᵎˊ;->ᵔי(ILandroid/os/Bundle;)V

    :cond_0
    return-void

    :pswitch_0
    check-cast v1, Lـʾ/ᵔﹳ;

    iget-object p1, v1, Lـʾ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1, p5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    sget-object p2, Lᐧﹳ/ﹳٴ;->ﹳٴ:Lʼʻ/ᵔٴ;

    sget-object p2, Lﹶﾞ/ʻᴵ;->ʽ:[Ljava/lang/String;

    sget-object p3, Lﹶﾞ/ʻᴵ;->ﹳٴ:[Ljava/lang/String;

    invoke-static {p5, p2, p3}, Lﹶﾞ/ʻᴵ;->ᵎﹶ(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    move-object p5, p2

    :cond_2
    const-string p2, "events"

    invoke-virtual {p1, p2, p5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, v1, Lـʾ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast p2, Lˑʼ/ᵎˊ;

    const/4 p3, 0x2

    invoke-virtual {p2, p3, p1}, Lˑʼ/ᵎˊ;->ᵔי(ILandroid/os/Bundle;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
