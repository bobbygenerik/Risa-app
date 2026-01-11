.class public final Lcom/google/android/material/datepicker/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ⁱˊ:Lٴﾞ/ˆʾ;

.field public final ﹳٴ:Lٴﾞ/ˆʾ;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/google/android/material/datepicker/ﾞʻ;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f04040d

    invoke-static {v1, p1, v0}, Lˈˋ/ʾˊ;->ʾˋ(ILandroid/content/Context;Ljava/lang/String;)Landroid/util/TypedValue;

    move-result-object v0

    iget v0, v0, Landroid/util/TypedValue;->data:I

    sget-object v1, Lיﹶ/ﹳٴ;->ᵔʾ:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {p1, v1}, Lٴﾞ/ˆʾ;->ʼᐧ(Landroid/content/Context;I)Lٴﾞ/ˆʾ;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {p1, v1}, Lٴﾞ/ˆʾ;->ʼᐧ(Landroid/content/Context;I)Lٴﾞ/ˆʾ;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {p1, v1}, Lٴﾞ/ˆʾ;->ʼᐧ(Landroid/content/Context;I)Lٴﾞ/ˆʾ;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {p1, v1}, Lٴﾞ/ˆʾ;->ʼᐧ(Landroid/content/Context;I)Lٴﾞ/ˆʾ;

    const/4 v1, 0x7

    invoke-static {p1, v0, v1}, Lˉᵎ/ⁱˊ;->ﹳᐧ(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    const/16 v3, 0x9

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-static {p1, v3}, Lٴﾞ/ˆʾ;->ʼᐧ(Landroid/content/Context;I)Lٴﾞ/ˆʾ;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/material/datepicker/ʽ;->ﹳٴ:Lٴﾞ/ˆʾ;

    const/16 v3, 0x8

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-static {p1, v3}, Lٴﾞ/ˆʾ;->ʼᐧ(Landroid/content/Context;I)Lٴﾞ/ˆʾ;

    const/16 v3, 0xa

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-static {p1, v2}, Lٴﾞ/ˆʾ;->ʼᐧ(Landroid/content/Context;I)Lٴﾞ/ˆʾ;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/datepicker/ʽ;->ⁱˊ:Lٴﾞ/ˆʾ;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
