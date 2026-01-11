.class public final synthetic Lᐧⁱ/ﹳᐧ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic ʽʽ:Lʽⁱ/ـˏ;

.field public final synthetic ʾˋ:Lᐧⁱ/ʼˎ;

.field public final synthetic ˈٴ:Lᐧⁱ/ᵔﹳ;

.field public final synthetic ᴵˊ:Lʽⁱ/ᵔٴ;


# direct methods
.method public synthetic constructor <init>(Lᐧⁱ/ʼˎ;Lʽⁱ/ᵔٴ;Lʽⁱ/ـˏ;Lᐧⁱ/ᵔﹳ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᐧⁱ/ﹳᐧ;->ʾˋ:Lᐧⁱ/ʼˎ;

    iput-object p2, p0, Lᐧⁱ/ﹳᐧ;->ᴵˊ:Lʽⁱ/ᵔٴ;

    iput-object p3, p0, Lᐧⁱ/ﹳᐧ;->ʽʽ:Lʽⁱ/ـˏ;

    iput-object p4, p0, Lᐧⁱ/ﹳᐧ;->ˈٴ:Lᐧⁱ/ᵔﹳ;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    iget-object p1, p0, Lᐧⁱ/ﹳᐧ;->ᴵˊ:Lʽⁱ/ᵔٴ;

    check-cast p1, Lʽⁱ/ᵎﹶ;

    const/16 v0, 0x1d

    invoke-virtual {p1, v0}, Lʽⁱ/ᵎﹶ;->ᐧﹶ(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Lⁱי/ʼʼ;

    invoke-virtual {p1}, Lⁱי/ʼʼ;->ˊﾞ()Lʽⁱ/ˉـ;

    move-result-object v0

    check-cast v0, Lﹶʽ/ˆʾ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lﹶʽ/ʼˎ;

    invoke-direct {v1, v0}, Lﹶʽ/ʼˎ;-><init>(Lﹶʽ/ˆʾ;)V

    new-instance v0, Lʽⁱ/ﹳـ;

    iget-object v2, p0, Lᐧⁱ/ﹳᐧ;->ˈٴ:Lᐧⁱ/ᵔﹳ;

    iget v3, v2, Lᐧⁱ/ᵔﹳ;->ⁱˊ:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lʼʻ/ᵎⁱ;->ʼᐧ(Ljava/lang/Object;)Lʼʻ/ʿᵢ;

    move-result-object v3

    iget-object v4, p0, Lᐧⁱ/ﹳᐧ;->ʽʽ:Lʽⁱ/ـˏ;

    invoke-direct {v0, v4, v3}, Lʽⁱ/ﹳـ;-><init>(Lʽⁱ/ـˏ;Ljava/util/List;)V

    invoke-virtual {v1, v0}, Lﹶʽ/ʼˎ;->ˑﹳ(Lʽⁱ/ﹳـ;)Lʽⁱ/ᴵˑ;

    iget-object v0, v2, Lᐧⁱ/ᵔﹳ;->ﹳٴ:Lʽⁱ/ʿ;

    iget-object v0, v0, Lʽⁱ/ʿ;->ⁱˊ:Lʽⁱ/ـˏ;

    iget v0, v0, Lʽⁱ/ـˏ;->ʽ:I

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lʽⁱ/ᴵˑ;->ʼˎ(IZ)Lʽⁱ/ᴵˑ;

    invoke-virtual {v1}, Lʽⁱ/ᴵˑ;->ﹳٴ()Lʽⁱ/ˉـ;

    move-result-object v0

    invoke-virtual {p1, v0}, Lⁱי/ʼʼ;->ﾞˊ(Lʽⁱ/ˉـ;)V

    iget-object p1, v2, Lᐧⁱ/ᵔﹳ;->ʽ:Ljava/lang/String;

    iget-object v0, p0, Lᐧⁱ/ﹳᐧ;->ʾˋ:Lᐧⁱ/ʼˎ;

    iget v1, v0, Lᐧⁱ/ʼˎ;->ﾞᴵ:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, v0, Lᐧⁱ/ʼˎ;->ᵎﹶ:Lᐧⁱ/ˏי;

    iget-object v1, v1, Lᐧⁱ/ˏי;->ᵔי:Lʽᵔ/ʽ;

    iget-object v1, v1, Lʽᵔ/ʽ;->ﾞᴵ:[Ljava/lang/CharSequence;

    check-cast v1, [Ljava/lang/String;

    const/4 v2, 0x1

    aput-object p1, v1, v2

    :goto_0
    iget-object p1, v0, Lᐧⁱ/ʼˎ;->ˑﹳ:Lᐧⁱ/ˏי;

    iget-object p1, p1, Lᐧⁱ/ˏי;->ˋᵔ:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
