.class public final synthetic Lᐧⁱ/ﾞʻ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic ʾˋ:Lᐧⁱ/ˉʿ;

.field public final synthetic ᴵˊ:I


# direct methods
.method public synthetic constructor <init>(Lᐧⁱ/ˉʿ;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᐧⁱ/ﾞʻ;->ʾˋ:Lᐧⁱ/ˉʿ;

    iput p2, p0, Lᐧⁱ/ﾞʻ;->ᴵˊ:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    iget-object p1, p0, Lᐧⁱ/ﾞʻ;->ʾˋ:Lᐧⁱ/ˉʿ;

    iget-object v0, p1, Lᐧⁱ/ˉʿ;->ᵎﹶ:Lᐧⁱ/ˏי;

    iget v1, p1, Lᐧⁱ/ˉʿ;->ﾞᴵ:I

    iget v2, p0, Lᐧⁱ/ﾞʻ;->ᴵˊ:I

    if-eq v2, v1, :cond_0

    iget-object p1, p1, Lᐧⁱ/ˉʿ;->ˑﹳ:[F

    aget p1, p1, v2

    invoke-static {v0, p1}, Lᐧⁱ/ˏי;->ⁱˊ(Lᐧⁱ/ˏי;F)V

    :cond_0
    iget-object p1, v0, Lᐧⁱ/ˏי;->ˋᵔ:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
