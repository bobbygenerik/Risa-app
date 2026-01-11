.class public Lcom/google/android/material/chip/Chip;
.super Lˉˆ/ᵔﹳ;
.source "SourceFile"

# interfaces
.implements Lˆᵢ/ˑﹳ;
.implements Lˋⁱ/ʼʼ;
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "L\u02c9\u02c6/\u1d54\ufe73;",
        "L\u02c6\u1d62/\u02d1\ufe73;",
        "L\u02cb\u2071/\u02bc\u02bc;",
        "Landroid/widget/Checkable;"
    }
.end annotation


# static fields
.field public static final ʿ:[I

.field public static final ˉـ:[I

.field public static final ᴵˑ:Landroid/graphics/Rect;


# instance fields
.field public ʼˈ:Z

.field public ˆﾞ:Z

.field public ˈʿ:I

.field public final ˈⁱ:Lˆᵢ/ⁱˊ;

.field public ˉٴ:Landroid/view/View$OnClickListener;

.field public ˊʻ:Landroid/graphics/drawable/InsetDrawable;

.field public final ˊˋ:Lˆᵢ/ˈ;

.field public ˋᵔ:Ljava/lang/CharSequence;

.field public ˑٴ:I

.field public final ـˏ:Landroid/graphics/Rect;

.field public ٴʼ:Z

.field public ٴᵢ:Landroid/graphics/drawable/RippleDrawable;

.field public ᴵᵔ:Lˆᵢ/ﾞᴵ;

.field public ᵎˊ:Z

.field public ᵎⁱ:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field public ᵔי:Z

.field public ᵔٴ:Z

.field public final ﹳـ:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/google/android/material/chip/Chip;->ᴵˑ:Landroid/graphics/Rect;

    const v0, 0x10100a1

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/chip/Chip;->ˉـ:[I

    const v0, 0x101009f

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/chip/Chip;->ʿ:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 16

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v2, p2

    const v1, 0x7f140635

    const v4, 0x7f040104

    move-object/from16 v3, p1

    invoke-static {v3, v2, v4, v1}, Lˋᴵ/ﹳٴ;->ⁱˊ(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2, v4}, Lˉˆ/ᵔﹳ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/chip/Chip;->ـˏ:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/chip/Chip;->ﹳـ:Landroid/graphics/RectF;

    new-instance v1, Lˆᵢ/ⁱˊ;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v0}, Lˆᵢ/ⁱˊ;-><init>(ILjava/lang/Object;)V

    iput-object v1, v0, Lcom/google/android/material/chip/Chip;->ˈⁱ:Lˆᵢ/ⁱˊ;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x800013

    const/4 v9, 0x1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "background"

    const-string v3, "http://schemas.android.com/apk/res/android"

    invoke-interface {v2, v3, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "Chip"

    if-eqz v1, :cond_1

    const-string v1, "Do not set the background; Chip manages its own background drawable."

    nop

    :cond_1
    const-string v1, "drawableLeft"

    invoke-interface {v2, v3, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_21

    const-string v1, "drawableStart"

    invoke-interface {v2, v3, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_20

    const-string v1, "drawableEnd"

    invoke-interface {v2, v3, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "Please set end drawable using R.attr#closeIcon."

    if-nez v1, :cond_1f

    const-string v1, "drawableRight"

    invoke-interface {v2, v3, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1e

    const-string v1, "singleLine"

    invoke-interface {v2, v3, v1, v9}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string v1, "lines"

    invoke-interface {v2, v3, v1, v9}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v9, :cond_1d

    const-string v1, "minLines"

    invoke-interface {v2, v3, v1, v9}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v9, :cond_1d

    const-string v1, "maxLines"

    invoke-interface {v2, v3, v1, v9}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v9, :cond_1d

    const-string v1, "gravity"

    invoke-interface {v2, v3, v1, v8}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v8, :cond_2

    const-string v1, "Chip text must be vertically center and start aligned"

    nop

    :cond_2
    :goto_0
    new-instance v10, Lˆᵢ/ﾞᴵ;

    invoke-direct {v10, v7, v2}, Lˆᵢ/ﾞᴵ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v11, 0x0

    new-array v6, v11, [I

    iget-object v1, v10, Lˆᵢ/ﾞᴵ;->ﹶˎ:Landroid/content/Context;

    sget-object v3, Lיﹶ/ﹳٴ;->ʽ:[I

    const v5, 0x7f140635

    invoke-static/range {v1 .. v6}, Lˈᐧ/ٴﹶ;->ˑﹳ(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/16 v12, 0x25

    invoke-virtual {v1, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    iput-boolean v5, v10, Lˆᵢ/ﾞᴵ;->ʿʽ:Z

    const/16 v5, 0x18

    iget-object v6, v10, Lˆᵢ/ﾞᴵ;->ﹶˎ:Landroid/content/Context;

    invoke-static {v6, v1, v5}, Lˉᵎ/ⁱˊ;->ﹳᐧ(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iget-object v13, v10, Lˆᵢ/ﾞᴵ;->ˊᵔ:Landroid/content/res/ColorStateList;

    if-eq v13, v5, :cond_3

    iput-object v5, v10, Lˆᵢ/ﾞᴵ;->ˊᵔ:Landroid/content/res/ColorStateList;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v5

    invoke-virtual {v10, v5}, Lˆᵢ/ﾞᴵ;->onStateChange([I)Z

    :cond_3
    const/16 v5, 0xb

    invoke-static {v6, v1, v5}, Lˉᵎ/ⁱˊ;->ﹳᐧ(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iget-object v13, v10, Lˆᵢ/ﾞᴵ;->ـﹶ:Landroid/content/res/ColorStateList;

    if-eq v13, v5, :cond_4

    iput-object v5, v10, Lˆᵢ/ﾞᴵ;->ـﹶ:Landroid/content/res/ColorStateList;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v5

    invoke-virtual {v10, v5}, Lˆᵢ/ﾞᴵ;->onStateChange([I)Z

    :cond_4
    const/16 v5, 0x13

    const/4 v13, 0x0

    invoke-virtual {v1, v5, v13}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iget v14, v10, Lˆᵢ/ﾞᴵ;->ˈˏ:F

    cmpl-float v14, v14, v5

    if-eqz v14, :cond_5

    iput v5, v10, Lˆᵢ/ﾞᴵ;->ˈˏ:F

    invoke-virtual {v10}, Lˋⁱ/ʼˎ;->invalidateSelf()V

    invoke-virtual {v10}, Lˆᵢ/ﾞᴵ;->ᴵˊ()V

    :cond_5
    const/16 v5, 0xc

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-virtual {v1, v5, v13}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    invoke-virtual {v10, v5}, Lˆᵢ/ﾞᴵ;->ˉٴ(F)V

    :cond_6
    const/16 v5, 0x16

    invoke-static {v6, v1, v5}, Lˉᵎ/ⁱˊ;->ﹳᐧ(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v10, v5}, Lˆᵢ/ﾞᴵ;->ˆﾞ(Landroid/content/res/ColorStateList;)V

    const/16 v5, 0x17

    invoke-virtual {v1, v5, v13}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    invoke-virtual {v10, v5}, Lˆᵢ/ﾞᴵ;->ᵔٴ(F)V

    const/16 v5, 0x24

    invoke-static {v6, v1, v5}, Lˉᵎ/ⁱˊ;->ﹳᐧ(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v10, v5}, Lˆᵢ/ﾞᴵ;->ˉـ(Landroid/content/res/ColorStateList;)V

    const/4 v14, 0x5

    invoke-virtual {v1, v14}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    if-nez v5, :cond_7

    const-string v5, ""

    :cond_7
    iget-object v15, v10, Lˆᵢ/ﾞᴵ;->ٴﹳ:Ljava/lang/CharSequence;

    invoke-static {v15, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_8

    iput-object v5, v10, Lˆᵢ/ﾞᴵ;->ٴﹳ:Ljava/lang/CharSequence;

    iget-object v5, v10, Lˆᵢ/ﾞᴵ;->ˈـ:Lˈᐧ/ʼˎ;

    iput-boolean v9, v5, Lˈᐧ/ʼˎ;->ˈ:Z

    invoke-virtual {v10}, Lˋⁱ/ʼˎ;->invalidateSelf()V

    invoke-virtual {v10}, Lˆᵢ/ﾞᴵ;->ᴵˊ()V

    :cond_8
    invoke-virtual {v1, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v1, v11, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    if-eqz v5, :cond_9

    new-instance v15, Lﹳ/ˈ;

    invoke-direct {v15, v6, v5}, Lﹳ/ˈ;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    :cond_9
    const/4 v15, 0x0

    :goto_1
    iget v5, v15, Lﹳ/ˈ;->ﾞʻ:F

    invoke-virtual {v1, v9, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, v15, Lﹳ/ˈ;->ﾞʻ:F

    invoke-virtual {v10, v15}, Lˆᵢ/ﾞᴵ;->ʿ(Lﹳ/ˈ;)V

    const/4 v5, 0x3

    invoke-virtual {v1, v5, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    if-eq v15, v9, :cond_c

    const/4 v8, 0x2

    if-eq v15, v8, :cond_b

    if-eq v15, v5, :cond_a

    goto :goto_2

    :cond_a
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    iput-object v5, v10, Lˆᵢ/ﾞᴵ;->ˆˑ:Landroid/text/TextUtils$TruncateAt;

    goto :goto_2

    :cond_b
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    iput-object v5, v10, Lˆᵢ/ﾞᴵ;->ˆˑ:Landroid/text/TextUtils$TruncateAt;

    goto :goto_2

    :cond_c
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    iput-object v5, v10, Lˆᵢ/ﾞᴵ;->ˆˑ:Landroid/text/TextUtils$TruncateAt;

    :goto_2
    const/16 v5, 0x12

    invoke-virtual {v1, v5, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v10, v5}, Lˆᵢ/ﾞᴵ;->ᵔי(Z)V

    const-string v5, "http://schemas.android.com/apk/res-auto"

    if-eqz v2, :cond_d

    const-string v8, "chipIconEnabled"

    invoke-interface {v2, v5, v8}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_d

    const-string v8, "chipIconVisible"

    invoke-interface {v2, v5, v8}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_d

    const/16 v8, 0xf

    invoke-virtual {v1, v8, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    invoke-virtual {v10, v8}, Lˆᵢ/ﾞᴵ;->ᵔי(Z)V

    :cond_d
    const/16 v8, 0xe

    invoke-static {v6, v1, v8}, Lˉᵎ/ⁱˊ;->ʽﹳ(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v10, v8}, Lˆᵢ/ﾞᴵ;->ᵎⁱ(Landroid/graphics/drawable/Drawable;)V

    const/16 v8, 0x11

    invoke-virtual {v1, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v15

    if-eqz v15, :cond_e

    invoke-static {v6, v1, v8}, Lˉᵎ/ⁱˊ;->ﹳᐧ(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v10, v8}, Lˆᵢ/ﾞᴵ;->ᵎˊ(Landroid/content/res/ColorStateList;)V

    :cond_e
    const/16 v8, 0x10

    const/high16 v15, -0x40800000    # -1.0f

    invoke-virtual {v1, v8, v15}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v8

    invoke-virtual {v10, v8}, Lˆᵢ/ﾞᴵ;->ٴʼ(F)V

    const/16 v8, 0x1f

    invoke-virtual {v1, v8, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    invoke-virtual {v10, v8}, Lˆᵢ/ﾞᴵ;->ﹳـ(Z)V

    if-eqz v2, :cond_f

    const-string v8, "closeIconEnabled"

    invoke-interface {v2, v5, v8}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_f

    const-string v8, "closeIconVisible"

    invoke-interface {v2, v5, v8}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_f

    const/16 v8, 0x1a

    invoke-virtual {v1, v8, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    invoke-virtual {v10, v8}, Lˆᵢ/ﾞᴵ;->ﹳـ(Z)V

    :cond_f
    const/16 v8, 0x19

    invoke-static {v6, v1, v8}, Lˉᵎ/ⁱˊ;->ʽﹳ(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v10, v8}, Lˆᵢ/ﾞᴵ;->ˈʿ(Landroid/graphics/drawable/Drawable;)V

    const/16 v8, 0x1e

    invoke-static {v6, v1, v8}, Lˉᵎ/ⁱˊ;->ﹳᐧ(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v10, v8}, Lˆᵢ/ﾞᴵ;->ـˏ(Landroid/content/res/ColorStateList;)V

    const/16 v8, 0x1c

    invoke-virtual {v1, v8, v13}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v8

    invoke-virtual {v10, v8}, Lˆᵢ/ﾞᴵ;->ˋᵔ(F)V

    const/4 v8, 0x6

    invoke-virtual {v1, v8, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    invoke-virtual {v10, v8}, Lˆᵢ/ﾞᴵ;->ˈٴ(Z)V

    const/16 v8, 0xa

    invoke-virtual {v1, v8, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    invoke-virtual {v10, v8}, Lˆᵢ/ﾞᴵ;->ٴᵢ(Z)V

    if-eqz v2, :cond_10

    const-string v8, "checkedIconEnabled"

    invoke-interface {v2, v5, v8}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_10

    const-string v8, "checkedIconVisible"

    invoke-interface {v2, v5, v8}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_10

    const/16 v5, 0x8

    invoke-virtual {v1, v5, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v10, v5}, Lˆᵢ/ﾞᴵ;->ٴᵢ(Z)V

    :cond_10
    const/4 v5, 0x7

    invoke-static {v6, v1, v5}, Lˉᵎ/ⁱˊ;->ʽﹳ(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v10, v5}, Lˆᵢ/ﾞᴵ;->ᴵᵔ(Landroid/graphics/drawable/Drawable;)V

    const/16 v5, 0x9

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-static {v6, v1, v5}, Lˉᵎ/ⁱˊ;->ﹳᐧ(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v10, v5}, Lˆᵢ/ﾞᴵ;->ˊʻ(Landroid/content/res/ColorStateList;)V

    :cond_11
    const/16 v5, 0x27

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-virtual {v1, v5, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    if-eqz v5, :cond_12

    invoke-static {v6, v5}, Lˑˏ/ⁱˊ;->ﹳٴ(Landroid/content/Context;I)Lˑˏ/ⁱˊ;

    move-result-object v5

    goto :goto_3

    :cond_12
    const/4 v5, 0x0

    :goto_3
    iput-object v5, v10, Lˆᵢ/ﾞᴵ;->ـˊ:Lˑˏ/ⁱˊ;

    const/16 v5, 0x21

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-virtual {v1, v5, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    if-eqz v5, :cond_13

    invoke-static {v6, v5}, Lˑˏ/ⁱˊ;->ﹳٴ(Landroid/content/Context;I)Lˑˏ/ⁱˊ;

    move-result-object v15

    goto :goto_4

    :cond_13
    const/4 v15, 0x0

    :goto_4
    iput-object v15, v10, Lˆᵢ/ﾞᴵ;->ᵎʿ:Lˑˏ/ⁱˊ;

    const/16 v5, 0x15

    invoke-virtual {v1, v5, v13}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iget v6, v10, Lˆᵢ/ﾞᴵ;->ʿـ:F

    cmpl-float v6, v6, v5

    if-eqz v6, :cond_14

    iput v5, v10, Lˆᵢ/ﾞᴵ;->ʿـ:F

    invoke-virtual {v10}, Lˋⁱ/ʼˎ;->invalidateSelf()V

    invoke-virtual {v10}, Lˆᵢ/ﾞᴵ;->ᴵˊ()V

    :cond_14
    const/16 v5, 0x23

    invoke-virtual {v1, v5, v13}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    invoke-virtual {v10, v5}, Lˆᵢ/ﾞᴵ;->ᴵˑ(F)V

    const/16 v5, 0x22

    invoke-virtual {v1, v5, v13}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    invoke-virtual {v10, v5}, Lˆᵢ/ﾞᴵ;->ˈⁱ(F)V

    const/16 v5, 0x29

    invoke-virtual {v1, v5, v13}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iget v6, v10, Lˆᵢ/ﾞᴵ;->ʻʿ:F

    cmpl-float v6, v6, v5

    if-eqz v6, :cond_15

    iput v5, v10, Lˆᵢ/ﾞᴵ;->ʻʿ:F

    invoke-virtual {v10}, Lˋⁱ/ʼˎ;->invalidateSelf()V

    invoke-virtual {v10}, Lˆᵢ/ﾞᴵ;->ᴵˊ()V

    :cond_15
    const/16 v5, 0x28

    invoke-virtual {v1, v5, v13}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iget v6, v10, Lˆᵢ/ﾞᴵ;->ﹶ:F

    cmpl-float v6, v6, v5

    if-eqz v6, :cond_16

    iput v5, v10, Lˆᵢ/ﾞᴵ;->ﹶ:F

    invoke-virtual {v10}, Lˋⁱ/ʼˎ;->invalidateSelf()V

    invoke-virtual {v10}, Lˆᵢ/ﾞᴵ;->ᴵˊ()V

    :cond_16
    const/16 v5, 0x1d

    invoke-virtual {v1, v5, v13}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    invoke-virtual {v10, v5}, Lˆᵢ/ﾞᴵ;->ˊˋ(F)V

    const/16 v5, 0x1b

    invoke-virtual {v1, v5, v13}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    invoke-virtual {v10, v5}, Lˆᵢ/ﾞᴵ;->ˑٴ(F)V

    const/16 v5, 0xd

    invoke-virtual {v1, v5, v13}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iget v6, v10, Lˆᵢ/ﾞᴵ;->ⁱᴵ:F

    cmpl-float v6, v6, v5

    if-eqz v6, :cond_17

    iput v5, v10, Lˆᵢ/ﾞᴵ;->ⁱᴵ:F

    invoke-virtual {v10}, Lˋⁱ/ʼˎ;->invalidateSelf()V

    invoke-virtual {v10}, Lˆᵢ/ﾞᴵ;->ᴵˊ()V

    :cond_17
    const/4 v5, 0x4

    const v6, 0x7fffffff

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v10, Lˆᵢ/ﾞᴵ;->ᵢʻ:I

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    new-array v6, v11, [I

    const v5, 0x7f140635

    invoke-static {v7, v2, v4, v5}, Lˈᐧ/ٴﹶ;->ﹳٴ(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    move-object v1, v7

    invoke-static/range {v1 .. v6}, Lˈᐧ/ٴﹶ;->ⁱˊ(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    const/16 v6, 0x20

    invoke-virtual {v5, v6, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, v0, Lcom/google/android/material/chip/Chip;->ᵔٴ:Z

    const v6, 0x7f040441

    invoke-static {v1, v6}, Lˈˋ/ʾˊ;->ʼʼ(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v6

    if-eqz v6, :cond_19

    iget v7, v6, Landroid/util/TypedValue;->type:I

    if-eq v7, v14, :cond_18

    goto :goto_6

    :cond_18
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v6

    :goto_5
    float-to-int v6, v6

    goto :goto_7

    :cond_19
    :goto_6
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0704eb

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    goto :goto_5

    :goto_7
    int-to-float v6, v6

    const/16 v7, 0x14

    invoke-virtual {v5, v7, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    iput v6, v0, Lcom/google/android/material/chip/Chip;->ˑٴ:I

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v0, v10}, Lcom/google/android/material/chip/Chip;->setChipDrawable(Lˆᵢ/ﾞᴵ;)V

    invoke-virtual {v0}, Landroid/view/View;->getElevation()F

    move-result v5

    invoke-virtual {v10, v5}, Lˋⁱ/ʼˎ;->ᵔʾ(F)V

    new-array v6, v11, [I

    const v5, 0x7f140635

    invoke-static {v1, v2, v4, v5}, Lˈᐧ/ٴﹶ;->ﹳٴ(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-static/range {v1 .. v6}, Lˈᐧ/ٴﹶ;->ⁱˊ(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v1, Lˆᵢ/ˈ;

    invoke-direct {v1, v0, v0}, Lˆᵢ/ˈ;-><init>(Lcom/google/android/material/chip/Chip;Lcom/google/android/material/chip/Chip;)V

    iput-object v1, v0, Lcom/google/android/material/chip/Chip;->ˊˋ:Lˆᵢ/ˈ;

    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip;->ˈ()V

    if-nez v2, :cond_1a

    new-instance v1, Lˆᵢ/ʽ;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lˆᵢ/ʽ;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :cond_1a
    iget-boolean v1, v0, Lcom/google/android/material/chip/Chip;->ٴʼ:Z

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    iget-object v1, v10, Lˆᵢ/ﾞᴵ;->ٴﹳ:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v10, Lˆᵢ/ﾞᴵ;->ˆˑ:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip;->ᵎﹶ()V

    iget-object v1, v0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    iget-boolean v1, v1, Lˆᵢ/ﾞᴵ;->ˎـ:Z

    if-nez v1, :cond_1b

    invoke-virtual {v0, v9}, Lcom/google/android/material/chip/Chip;->setLines(I)V

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    :cond_1b
    const v1, 0x800013

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setGravity(I)V

    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip;->ﾞᴵ()V

    iget-boolean v1, v0, Lcom/google/android/material/chip/Chip;->ᵔٴ:Z

    if-eqz v1, :cond_1c

    iget v1, v0, Lcom/google/android/material/chip/Chip;->ˑٴ:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinHeight(I)V

    :cond_1c
    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    iput v1, v0, Lcom/google/android/material/chip/Chip;->ˈʿ:I

    new-instance v1, Lˆᵢ/ﹳٴ;

    invoke-direct {v1, v0}, Lˆᵢ/ﹳٴ;-><init>(Lcom/google/android/material/chip/Chip;)V

    invoke-super {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void

    :cond_1d
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Chip does not support multi-line text"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1e
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1f
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_20
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_21
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Please set left drawable using R.attr#chipIcon."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getCloseIconTouchBounds()Landroid/graphics/RectF;
    .locals 5

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ﹳـ:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->ʽ()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->ˉٴ:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    invoke-virtual {v1}, Lˆᵢ/ﾞᴵ;->ᐧﾞ()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v1, Lˆᵢ/ﾞᴵ;->ⁱᴵ:F

    iget v4, v1, Lˆᵢ/ﾞᴵ;->ٴᴵ:F

    add-float/2addr v3, v4

    iget v4, v1, Lˆᵢ/ﾞᴵ;->יﹳ:F

    add-float/2addr v3, v4

    iget v4, v1, Lˆᵢ/ﾞᴵ;->ـᵢ:F

    add-float/2addr v3, v4

    iget v4, v1, Lˆᵢ/ﾞᴵ;->ﹶ:F

    add-float/2addr v3, v4

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result v1

    if-nez v1, :cond_0

    iget v1, v2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->left:F

    goto :goto_0

    :cond_0
    iget v1, v2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->right:F

    :goto_0
    iget v1, v2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    :cond_1
    return-object v0
.end method

.method private getCloseIconTouchBoundsInt()Landroid/graphics/Rect;
    .locals 5

    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object v0

    iget v1, v0, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, v0, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    iget-object v4, p0, Lcom/google/android/material/chip/Chip;->ـˏ:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, v2, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-object v4
.end method

.method private getTextAppearance()Lﹳ/ˈ;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lˆᵢ/ﾞᴵ;->ˈـ:Lˈᐧ/ʼˎ;

    iget-object v0, v0, Lˈᐧ/ʼˎ;->ﾞᴵ:Lﹳ/ˈ;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private setCloseIconHovered(Z)V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->ᵔי:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->ᵔי:Z

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    :cond_0
    return-void
.end method

.method private setCloseIconPressed(Z)V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->ᵎˊ:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->ᵎˊ:Z

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    :cond_0
    return-void
.end method

.method public static synthetic ﹳٴ(Lcom/google/android/material/chip/Chip;)Landroid/graphics/Rect;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBoundsInt()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->ʼˈ:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ˊˋ:Lˆᵢ/ˈ;

    iget-object v1, v0, Lˉـ/ⁱˊ;->ᵔᵢ:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x7

    const/16 v5, 0x100

    const/16 v6, 0x80

    if-eq v1, v2, :cond_4

    const/16 v2, 0x9

    if-eq v1, v2, :cond_4

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    iget v1, v0, Lˉـ/ⁱˊ;->ˉʿ:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_7

    if-ne v1, v2, :cond_3

    goto :goto_1

    :cond_3
    iput v2, v0, Lˉـ/ⁱˊ;->ˉʿ:I

    invoke-virtual {v0, v2, v6}, Lˉـ/ⁱˊ;->ﹳᐧ(II)V

    invoke-virtual {v0, v1, v5}, Lˉـ/ⁱˊ;->ﹳᐧ(II)V

    return v4

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v2, v0, Lˆᵢ/ˈ;->ᵔﹳ:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v2}, Lcom/google/android/material/chip/Chip;->ʽ()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-direct {v2}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_5

    move v3, v4

    :cond_5
    iget p1, v0, Lˉـ/ⁱˊ;->ˉʿ:I

    if-ne p1, v3, :cond_6

    goto :goto_1

    :cond_6
    iput v3, v0, Lˉـ/ⁱˊ;->ˉʿ:I

    invoke-virtual {v0, v3, v6}, Lˉـ/ⁱˊ;->ﹳᐧ(II)V

    invoke-virtual {v0, p1, v5}, Lˉـ/ⁱˊ;->ﹳᐧ(II)V

    return v4

    :cond_7
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_8

    :goto_1
    return v4

    :cond_8
    return v3
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 9

    .prologue
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->ʼˈ:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ˊˋ:Lˆᵢ/ˈ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    const/4 v4, 0x1

    if-eq v1, v4, :cond_b

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v5, 0x3d

    const/4 v6, 0x0

    if-eq v1, v5, :cond_9

    const/16 v5, 0x42

    if-eq v1, v5, :cond_5

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v7

    if-eqz v7, :cond_b

    const/16 v7, 0x13

    if-eq v1, v7, :cond_2

    const/16 v7, 0x15

    if-eq v1, v7, :cond_1

    const/16 v7, 0x16

    if-eq v1, v7, :cond_3

    const/16 v5, 0x82

    goto :goto_0

    :cond_1
    const/16 v5, 0x11

    goto :goto_0

    :cond_2
    const/16 v5, 0x21

    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    add-int/2addr v1, v4

    move v7, v2

    :goto_1
    if-ge v2, v1, :cond_4

    invoke-virtual {v0, v5, v6}, Lˉـ/ⁱˊ;->ˉʿ(ILandroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_4

    add-int/lit8 v2, v2, 0x1

    move v7, v4

    goto :goto_1

    :cond_4
    move v2, v7

    goto :goto_3

    :cond_5
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_b

    iget v1, v0, Lˉـ/ⁱˊ;->ﾞʻ:I

    if-eq v1, v3, :cond_8

    iget-object v5, v0, Lˆᵢ/ˈ;->ᵔﹳ:Lcom/google/android/material/chip/Chip;

    if-nez v1, :cond_6

    invoke-virtual {v5}, Landroid/view/View;->performClick()Z

    goto :goto_2

    :cond_6
    if-ne v1, v4, :cond_8

    invoke-virtual {v5, v2}, Landroid/view/View;->playSoundEffect(I)V

    iget-object v1, v5, Lcom/google/android/material/chip/Chip;->ˉٴ:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_7

    invoke-interface {v1, v5}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_7
    iget-boolean v1, v5, Lcom/google/android/material/chip/Chip;->ʼˈ:Z

    if-eqz v1, :cond_8

    iget-object v1, v5, Lcom/google/android/material/chip/Chip;->ˊˋ:Lˆᵢ/ˈ;

    invoke-virtual {v1, v4, v4}, Lˉـ/ⁱˊ;->ﹳᐧ(II)V

    :cond_8
    :goto_2
    move v2, v4

    goto :goto_3

    :cond_9
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v6}, Lˉـ/ⁱˊ;->ˉʿ(ILandroid/graphics/Rect;)Z

    move-result v2

    goto :goto_3

    :cond_a
    invoke-virtual {p1, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v0, v4, v6}, Lˉـ/ⁱˊ;->ˉʿ(ILandroid/graphics/Rect;)Z

    move-result v2

    :cond_b
    :goto_3
    if-eqz v2, :cond_c

    iget v0, v0, Lˉـ/ⁱˊ;->ﾞʻ:I

    if-eq v0, v3, :cond_c

    return v4

    :cond_c
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final drawableStateChanged()V
    .locals 4

    .prologue
    invoke-super {p0}, Lˉˆ/ᵔﹳ;->drawableStateChanged()V

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iget-object v0, v0, Lˆᵢ/ﾞᴵ;->ˑ:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lˆᵢ/ﾞᴵ;->ʾˋ(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    iget-boolean v3, p0, Lcom/google/android/material/chip/Chip;->ˆﾞ:Z

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    iget-boolean v3, p0, Lcom/google/android/material/chip/Chip;->ᵔי:Z

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    iget-boolean v3, p0, Lcom/google/android/material/chip/Chip;->ᵎˊ:Z

    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v2, v2, 0x1

    :cond_3
    new-array v2, v2, [I

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    const v3, 0x101009e

    aput v3, v2, v1

    const/4 v1, 0x1

    :cond_4
    iget-boolean v3, p0, Lcom/google/android/material/chip/Chip;->ˆﾞ:Z

    if-eqz v3, :cond_5

    const v3, 0x101009c

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    :cond_5
    iget-boolean v3, p0, Lcom/google/android/material/chip/Chip;->ᵔי:Z

    if-eqz v3, :cond_6

    const v3, 0x1010367

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    :cond_6
    iget-boolean v3, p0, Lcom/google/android/material/chip/Chip;->ᵎˊ:Z

    if-eqz v3, :cond_7

    const v3, 0x10100a7

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    :cond_7
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_8

    const v3, 0x10100a1

    aput v3, v2, v1

    :cond_8
    invoke-virtual {v0, v2}, Lˆᵢ/ﾞᴵ;->ʼˈ([I)Z

    move-result v1

    :cond_9
    if-eqz v1, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_a
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ˋᵔ:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ˋᵔ:Ljava/lang/CharSequence;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    const-string v1, "android.widget.Button"

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lˆᵢ/ﾞᴵ;->ʾﾞ:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    return-object v1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    :cond_2
    const-string v0, "android.view.View"

    return-object v0
.end method

.method public getBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ˊʻ:Landroid/graphics/drawable/InsetDrawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    :cond_0
    return-object v0
.end method

.method public getCheckedIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lˆᵢ/ﾞᴵ;->ᐧˎ:Landroid/graphics/drawable/Drawable;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCheckedIconTint()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lˆᵢ/ﾞᴵ;->ʻᴵ:Landroid/content/res/ColorStateList;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChipBackgroundColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lˆᵢ/ﾞᴵ;->ـﹶ:Landroid/content/res/ColorStateList;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChipCornerRadius()F
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lˆᵢ/ﾞᴵ;->ʼʼ()F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public getChipDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    return-object v0
.end method

.method public getChipEndPadding()F
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    iget v0, v0, Lˆᵢ/ﾞᴵ;->ⁱᴵ:F

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getChipIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lˆᵢ/ﾞᴵ;->ـᵎ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    instance-of v1, v0, Lٴʼ/ﹳٴ;

    if-eqz v1, :cond_0

    check-cast v0, Lٴʼ/ﹳٴ;

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    return-object v1
.end method

.method public getChipIconSize()F
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    iget v0, v0, Lˆᵢ/ﾞᴵ;->ᐧﹶ:F

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getChipIconTint()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lˆᵢ/ﾞᴵ;->ʽᵔ:Landroid/content/res/ColorStateList;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChipMinHeight()F
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    iget v0, v0, Lˆᵢ/ﾞᴵ;->ˈˏ:F

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getChipStartPadding()F
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    iget v0, v0, Lˆᵢ/ﾞᴵ;->ʿـ:F

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getChipStrokeColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lˆᵢ/ﾞᴵ;->ﹳﹳ:Landroid/content/res/ColorStateList;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChipStrokeWidth()F
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    iget v0, v0, Lˆᵢ/ﾞᴵ;->ʻˋ:F

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getChipText()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getCloseIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lˆᵢ/ﾞᴵ;->ˑ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    instance-of v1, v0, Lٴʼ/ﹳٴ;

    if-eqz v1, :cond_0

    check-cast v0, Lٴʼ/ﹳٴ;

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    return-object v1
.end method

.method public getCloseIconContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lˆᵢ/ﾞᴵ;->ʽⁱ:Landroid/text/SpannableStringBuilder;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCloseIconEndPadding()F
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    iget v0, v0, Lˆᵢ/ﾞᴵ;->ٴᴵ:F

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCloseIconSize()F
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    iget v0, v0, Lˆᵢ/ﾞᴵ;->יﹳ:F

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCloseIconStartPadding()F
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    iget v0, v0, Lˆᵢ/ﾞᴵ;->ـᵢ:F

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCloseIconTint()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lˆᵢ/ﾞᴵ;->ˎᐧ:Landroid/content/res/ColorStateList;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEllipsize()Landroid/text/TextUtils$TruncateAt;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lˆᵢ/ﾞᴵ;->ˆˑ:Landroid/text/TextUtils$TruncateAt;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getFocusedRect(Landroid/graphics/Rect;)V
    .locals 3

    .prologue
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->ʼˈ:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ˊˋ:Lˆᵢ/ˈ;

    iget v1, v0, Lˉـ/ⁱˊ;->ﾞʻ:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v0, v0, Lˉـ/ⁱˊ;->ٴﹶ:I

    if-ne v0, v2, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBoundsInt()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->getFocusedRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getHideMotionSpec()Lˑˏ/ⁱˊ;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lˆᵢ/ﾞᴵ;->ᵎʿ:Lˑˏ/ⁱˊ;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIconEndPadding()F
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    iget v0, v0, Lˆᵢ/ﾞᴵ;->ⁱי:F

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getIconStartPadding()F
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    iget v0, v0, Lˆᵢ/ﾞᴵ;->ﹳⁱ:F

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getRippleColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lˆᵢ/ﾞᴵ;->ˑʼ:Landroid/content/res/ColorStateList;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getShapeAppearanceModel()Lˋⁱ/ᵔʾ;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    invoke-virtual {v0}, Lˋⁱ/ʼˎ;->ʼˎ()Lˋⁱ/ᵔʾ;

    move-result-object v0

    return-object v0
.end method

.method public getShowMotionSpec()Lˑˏ/ⁱˊ;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lˆᵢ/ﾞᴵ;->ـˊ:Lˑˏ/ⁱˊ;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTextEndPadding()F
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    iget v0, v0, Lˆᵢ/ﾞᴵ;->ﹶ:F

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getTextStartPadding()F
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    iget v0, v0, Lˆᵢ/ﾞᴵ;->ʻʿ:F

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/CheckBox;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    invoke-static {p0, v0}, Lﹳˋ/ʽʽ;->ʾˋ(Landroid/view/View;Lˋⁱ/ʼˎ;)V

    return-void
.end method

.method public final onCreateDrawableState(I)[I
    .locals 1

    .prologue
    add-int/lit8 p1, p1, 0x2

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onCreateDrawableState(I)[I

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/material/chip/Chip;->ˉـ:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lˆᵢ/ﾞᴵ;->ʾﾞ:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/material/chip/Chip;->ʿ:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    :cond_1
    return-object p1
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3

    .prologue
    invoke-super {p0, p1, p2, p3}, Landroid/widget/CheckBox;->onFocusChanged(ZILandroid/graphics/Rect;)V

    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->ʼˈ:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ˊˋ:Lˆᵢ/ˈ;

    iget v1, v0, Lˉـ/ⁱˊ;->ﾞʻ:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, v1}, Lˉـ/ⁱˊ;->ˆʾ(I)Z

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v0, p2, p3}, Lˉـ/ⁱˊ;->ˉʿ(ILandroid/graphics/Rect;)Z

    :cond_1
    return-void
.end method

.method public final onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/material/chip/Chip;->setCloseIconHovered(Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/chip/Chip;->setCloseIconHovered(Z)V

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getAccessibilityClassName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lˆᵢ/ﾞᴵ;->ʾﾞ:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    return-void
.end method

.method public final onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 3

    .prologue
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 p2, 0x3ea

    invoke-static {p1, p2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/CheckBox;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object p1

    return-object p1
.end method

.method public final onRtlPropertiesChanged(I)V
    .locals 1

    .prologue
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onRtlPropertiesChanged(I)V

    iget v0, p0, Lcom/google/android/material/chip/Chip;->ˈʿ:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/material/chip/Chip;->ˈʿ:I

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->ﾞᴵ()V

    :cond_0
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    if-eq v0, v2, :cond_2

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    goto :goto_2

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->ᵎˊ:Z

    if-eqz v0, :cond_7

    if-nez v1, :cond_1

    invoke-direct {p0, v3}, Lcom/google/android/material/chip/Chip;->setCloseIconPressed(Z)V

    :cond_1
    :goto_0
    move v0, v2

    goto :goto_3

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->ᵎˊ:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0, v3}, Landroid/view/View;->playSoundEffect(I)V

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ˉٴ:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_3

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->ʼˈ:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ˊˋ:Lˆᵢ/ˈ;

    invoke-virtual {v0, v2, v2}, Lˉـ/ⁱˊ;->ﹳᐧ(II)V

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    move v0, v3

    :goto_1
    invoke-direct {p0, v3}, Lcom/google/android/material/chip/Chip;->setCloseIconPressed(Z)V

    goto :goto_3

    :cond_6
    if-eqz v1, :cond_7

    invoke-direct {p0, v2}, Lcom/google/android/material/chip/Chip;->setCloseIconPressed(Z)V

    goto :goto_0

    :cond_7
    :goto_2
    move v0, v3

    :goto_3
    if-nez v0, :cond_9

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_4

    :cond_8
    return v3

    :cond_9
    :goto_4
    return v2
.end method

.method public setAccessibilityClassName(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->ˋᵔ:Ljava/lang/CharSequence;

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ٴᵢ:Landroid/graphics/drawable/RippleDrawable;

    if-eq p1, v0, :cond_0

    const-string p1, "Chip"

    const-string v0, "Do not set the background; Chip manages its own background drawable."

    nop

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    const-string p1, "Chip"

    const-string v0, "Do not set the background color; Chip manages its own background drawable."

    nop

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ٴᵢ:Landroid/graphics/drawable/RippleDrawable;

    if-eq p1, v0, :cond_0

    const-string p1, "Chip"

    const-string v0, "Do not set the background drawable; Chip manages its own background drawable."

    nop

    return-void

    :cond_0
    invoke-super {p0, p1}, Lˉˆ/ᵔﹳ;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    const-string p1, "Chip"

    const-string v0, "Do not set the background resource; Chip manages its own background drawable."

    nop

    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    const-string p1, "Chip"

    const-string v0, "Do not set the background tint list; Chip manages its own background drawable."

    nop

    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    const-string p1, "Chip"

    const-string v0, "Do not set the background tint mode; Chip manages its own background drawable."

    nop

    return-void
.end method

.method public setCheckable(Z)V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lˆᵢ/ﾞᴵ;->ˈٴ(Z)V

    :cond_0
    return-void
.end method

.method public setCheckableResource(I)V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lˆᵢ/ﾞᴵ;->ﹶˎ:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {v0, p1}, Lˆᵢ/ﾞᴵ;->ˈٴ(Z)V

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-nez v0, :cond_0

    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->ٴʼ:Z

    return-void

    :cond_0
    iget-boolean v0, v0, Lˆᵢ/ﾞᴵ;->ʾﾞ:Z

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method public setCheckedIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lˆᵢ/ﾞᴵ;->ᴵᵔ(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setCheckedIconEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCheckedIconVisible(Z)V

    return-void
.end method

.method public setCheckedIconEnabledResource(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCheckedIconVisible(I)V

    return-void
.end method

.method public setCheckedIconResource(I)V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lˆᵢ/ﾞᴵ;->ﹶˎ:Landroid/content/Context;

    invoke-static {v1, p1}, Lᴵˋ/ˊʻ;->ﹳᐧ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lˆᵢ/ﾞᴵ;->ᴵᵔ(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setCheckedIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lˆᵢ/ﾞᴵ;->ˊʻ(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setCheckedIconTintResource(I)V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lˆᵢ/ﾞᴵ;->ﹶˎ:Landroid/content/Context;

    invoke-static {v1, p1}, Lʼˉ/ʽ;->ˈ(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lˆᵢ/ﾞᴵ;->ˊʻ(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setCheckedIconVisible(I)V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lˆᵢ/ﾞᴵ;->ﹶˎ:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {v0, p1}, Lˆᵢ/ﾞᴵ;->ٴᵢ(Z)V

    :cond_0
    return-void
.end method

.method public setCheckedIconVisible(Z)V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lˆᵢ/ﾞᴵ;->ٴᵢ(Z)V

    :cond_0
    return-void
.end method

.method public setChipBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lˆᵢ/ﾞᴵ;->ـﹶ:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, Lˆᵢ/ﾞᴵ;->ـﹶ:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {v0, p1}, Lˆᵢ/ﾞᴵ;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public setChipBackgroundColorResource(I)V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lˆᵢ/ﾞᴵ;->ﹶˎ:Landroid/content/Context;

    invoke-static {v1, p1}, Lʼˉ/ʽ;->ˈ(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iget-object v1, v0, Lˆᵢ/ﾞᴵ;->ـﹶ:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, Lˆᵢ/ﾞᴵ;->ـﹶ:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {v0, p1}, Lˆᵢ/ﾞᴵ;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public setChipCornerRadius(F)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lˆᵢ/ﾞᴵ;->ˉٴ(F)V

    :cond_0
    return-void
.end method

.method public setChipCornerRadiusResource(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lˆᵢ/ﾞᴵ;->ﹶˎ:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Lˆᵢ/ﾞᴵ;->ˉٴ(F)V

    :cond_0
    return-void
.end method

.method public setChipDrawable(Lˆᵢ/ﾞᴵ;)V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eq v0, p1, :cond_1

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lˆᵢ/ﾞᴵ;->ʽʾ:Ljava/lang/ref/WeakReference;

    :cond_0
    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lˆᵢ/ﾞᴵ;->ˎـ:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p1, Lˆᵢ/ﾞᴵ;->ʽʾ:Ljava/lang/ref/WeakReference;

    iget p1, p0, Lcom/google/android/material/chip/Chip;->ˑٴ:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->ⁱˊ(I)V

    :cond_1
    return-void
.end method

.method public setChipEndPadding(F)V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    iget v1, v0, Lˆᵢ/ﾞᴵ;->ⁱᴵ:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    iput p1, v0, Lˆᵢ/ﾞᴵ;->ⁱᴵ:F

    invoke-virtual {v0}, Lˋⁱ/ʼˎ;->invalidateSelf()V

    invoke-virtual {v0}, Lˆᵢ/ﾞᴵ;->ᴵˊ()V

    :cond_0
    return-void
.end method

.method public setChipEndPaddingResource(I)V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lˆᵢ/ﾞᴵ;->ﹶˎ:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iget v1, v0, Lˆᵢ/ﾞᴵ;->ⁱᴵ:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    iput p1, v0, Lˆᵢ/ﾞᴵ;->ⁱᴵ:F

    invoke-virtual {v0}, Lˋⁱ/ʼˎ;->invalidateSelf()V

    invoke-virtual {v0}, Lˆᵢ/ﾞᴵ;->ᴵˊ()V

    :cond_0
    return-void
.end method

.method public setChipIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lˆᵢ/ﾞᴵ;->ᵎⁱ(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setChipIconEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setChipIconVisible(Z)V

    return-void
.end method

.method public setChipIconEnabledResource(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setChipIconVisible(I)V

    return-void
.end method

.method public setChipIconResource(I)V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lˆᵢ/ﾞᴵ;->ﹶˎ:Landroid/content/Context;

    invoke-static {v1, p1}, Lᴵˋ/ˊʻ;->ﹳᐧ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lˆᵢ/ﾞᴵ;->ᵎⁱ(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setChipIconSize(F)V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lˆᵢ/ﾞᴵ;->ٴʼ(F)V

    :cond_0
    return-void
.end method

.method public setChipIconSizeResource(I)V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lˆᵢ/ﾞᴵ;->ﹶˎ:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Lˆᵢ/ﾞᴵ;->ٴʼ(F)V

    :cond_0
    return-void
.end method

.method public setChipIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lˆᵢ/ﾞᴵ;->ᵎˊ(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setChipIconTintResource(I)V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lˆᵢ/ﾞᴵ;->ﹶˎ:Landroid/content/Context;

    invoke-static {v1, p1}, Lʼˉ/ʽ;->ˈ(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lˆᵢ/ﾞᴵ;->ᵎˊ(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setChipIconVisible(I)V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lˆᵢ/ﾞᴵ;->ﹶˎ:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {v0, p1}, Lˆᵢ/ﾞᴵ;->ᵔי(Z)V

    :cond_0
    return-void
.end method

.method public setChipIconVisible(Z)V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lˆᵢ/ﾞᴵ;->ᵔי(Z)V

    :cond_0
    return-void
.end method

.method public setChipMinHeight(F)V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    iget v1, v0, Lˆᵢ/ﾞᴵ;->ˈˏ:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    iput p1, v0, Lˆᵢ/ﾞᴵ;->ˈˏ:F

    invoke-virtual {v0}, Lˋⁱ/ʼˎ;->invalidateSelf()V

    invoke-virtual {v0}, Lˆᵢ/ﾞᴵ;->ᴵˊ()V

    :cond_0
    return-void
.end method

.method public setChipMinHeightResource(I)V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lˆᵢ/ﾞᴵ;->ﹶˎ:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iget v1, v0, Lˆᵢ/ﾞᴵ;->ˈˏ:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    iput p1, v0, Lˆᵢ/ﾞᴵ;->ˈˏ:F

    invoke-virtual {v0}, Lˋⁱ/ʼˎ;->invalidateSelf()V

    invoke-virtual {v0}, Lˆᵢ/ﾞᴵ;->ᴵˊ()V

    :cond_0
    return-void
.end method

.method public setChipStartPadding(F)V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    iget v1, v0, Lˆᵢ/ﾞᴵ;->ʿـ:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    iput p1, v0, Lˆᵢ/ﾞᴵ;->ʿـ:F

    invoke-virtual {v0}, Lˋⁱ/ʼˎ;->invalidateSelf()V

    invoke-virtual {v0}, Lˆᵢ/ﾞᴵ;->ᴵˊ()V

    :cond_0
    return-void
.end method

.method public setChipStartPaddingResource(I)V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lˆᵢ/ﾞᴵ;->ﹶˎ:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iget v1, v0, Lˆᵢ/ﾞᴵ;->ʿـ:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    iput p1, v0, Lˆᵢ/ﾞᴵ;->ʿـ:F

    invoke-virtual {v0}, Lˋⁱ/ʼˎ;->invalidateSelf()V

    invoke-virtual {v0}, Lˆᵢ/ﾞᴵ;->ᴵˊ()V

    :cond_0
    return-void
.end method

.method public setChipStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lˆᵢ/ﾞᴵ;->ˆﾞ(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setChipStrokeColorResource(I)V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lˆᵢ/ﾞᴵ;->ﹶˎ:Landroid/content/Context;

    invoke-static {v1, p1}, Lʼˉ/ʽ;->ˈ(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lˆᵢ/ﾞᴵ;->ˆﾞ(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setChipStrokeWidth(F)V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lˆᵢ/ﾞᴵ;->ᵔٴ(F)V

    :cond_0
    return-void
.end method

.method public setChipStrokeWidthResource(I)V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lˆᵢ/ﾞᴵ;->ﹶˎ:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Lˆᵢ/ﾞᴵ;->ᵔٴ(F)V

    :cond_0
    return-void
.end method

.method public setChipText(Ljava/lang/CharSequence;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setChipTextResource(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCloseIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lˆᵢ/ﾞᴵ;->ˈʿ(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->ˈ()V

    return-void
.end method

.method public setCloseIconContentDescription(Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lˆᵢ/ﾞᴵ;->ʽⁱ:Landroid/text/SpannableStringBuilder;

    if-eq v1, p1, :cond_1

    sget-object v1, Lˈʿ/ⁱˊ;->ⁱˊ:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    sget-object v1, Lˈʿ/ⁱˊ;->ˑﹳ:Lˈʿ/ⁱˊ;

    goto :goto_0

    :cond_0
    sget-object v1, Lˈʿ/ⁱˊ;->ˈ:Lˈʿ/ⁱˊ;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lˈʿ/ﾞᴵ;->ﹳٴ:Lar/tvplayer/core/domain/ʽﹳ;

    invoke-virtual {v1, p1}, Lˈʿ/ⁱˊ;->ʽ(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    iput-object p1, v0, Lˆᵢ/ﾞᴵ;->ʽⁱ:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Lˋⁱ/ʼˎ;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public setCloseIconEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCloseIconVisible(Z)V

    return-void
.end method

.method public setCloseIconEnabledResource(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCloseIconVisible(I)V

    return-void
.end method

.method public setCloseIconEndPadding(F)V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lˆᵢ/ﾞᴵ;->ˑٴ(F)V

    :cond_0
    return-void
.end method

.method public setCloseIconEndPaddingResource(I)V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lˆᵢ/ﾞᴵ;->ﹶˎ:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Lˆᵢ/ﾞᴵ;->ˑٴ(F)V

    :cond_0
    return-void
.end method

.method public setCloseIconResource(I)V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lˆᵢ/ﾞᴵ;->ﹶˎ:Landroid/content/Context;

    invoke-static {v1, p1}, Lᴵˋ/ˊʻ;->ﹳᐧ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lˆᵢ/ﾞᴵ;->ˈʿ(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->ˈ()V

    return-void
.end method

.method public setCloseIconSize(F)V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lˆᵢ/ﾞᴵ;->ˋᵔ(F)V

    :cond_0
    return-void
.end method

.method public setCloseIconSizeResource(I)V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lˆᵢ/ﾞᴵ;->ﹶˎ:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Lˆᵢ/ﾞᴵ;->ˋᵔ(F)V

    :cond_0
    return-void
.end method

.method public setCloseIconStartPadding(F)V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lˆᵢ/ﾞᴵ;->ˊˋ(F)V

    :cond_0
    return-void
.end method

.method public setCloseIconStartPaddingResource(I)V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lˆᵢ/ﾞᴵ;->ﹶˎ:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Lˆᵢ/ﾞᴵ;->ˊˋ(F)V

    :cond_0
    return-void
.end method

.method public setCloseIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lˆᵢ/ﾞᴵ;->ـˏ(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setCloseIconTintResource(I)V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lˆᵢ/ﾞᴵ;->ﹶˎ:Landroid/content/Context;

    invoke-static {v1, p1}, Lʼˉ/ʽ;->ˈ(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lˆᵢ/ﾞᴵ;->ـˏ(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setCloseIconVisible(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCloseIconVisible(Z)V

    return-void
.end method

.method public setCloseIconVisible(Z)V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lˆᵢ/ﾞᴵ;->ﹳـ(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->ˈ()V

    return-void
.end method

.method public final setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    if-nez p1, :cond_1

    if-nez p3, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Lˉˆ/ᵔﹳ;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    if-nez p1, :cond_1

    if-nez p3, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Lˉˆ/ᵔﹳ;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .locals 0

    .prologue
    if-nez p1, :cond_1

    if-nez p3, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CheckBox;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    if-nez p1, :cond_1

    if-nez p3, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CheckBox;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .locals 0

    .prologue
    if-nez p1, :cond_1

    if-nez p3, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CheckBox;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    if-nez p1, :cond_1

    if-nez p3, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CheckBox;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set right drawable using R.attr#closeIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set left drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setElevation(F)V
    .locals 1

    .prologue
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setElevation(F)V

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lˋⁱ/ʼˎ;->ᵔʾ(F)V

    :cond_0
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq p1, v0, :cond_2

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_1

    iput-object p1, v0, Lˆᵢ/ﾞᴵ;->ˆˑ:Landroid/text/TextUtils$TruncateAt;

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Text within a chip are not allowed to scroll."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setEnsureMinTouchTargetSize(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->ᵔٴ:Z

    iget p1, p0, Lcom/google/android/material/chip/Chip;->ˑٴ:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->ⁱˊ(I)V

    return-void
.end method

.method public setGravity(I)V
    .locals 1

    .prologue
    const v0, 0x800013

    if-eq p1, v0, :cond_0

    const-string p1, "Chip"

    const-string v0, "Chip text must be vertically center and start aligned"

    nop

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setGravity(I)V

    return-void
.end method

.method public setHideMotionSpec(Lˑˏ/ⁱˊ;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    iput-object p1, v0, Lˆᵢ/ﾞᴵ;->ᵎʿ:Lˑˏ/ⁱˊ;

    :cond_0
    return-void
.end method

.method public setHideMotionSpecResource(I)V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lˆᵢ/ﾞᴵ;->ﹶˎ:Landroid/content/Context;

    invoke-static {v1, p1}, Lˑˏ/ⁱˊ;->ﹳٴ(Landroid/content/Context;I)Lˑˏ/ⁱˊ;

    move-result-object p1

    iput-object p1, v0, Lˆᵢ/ﾞᴵ;->ᵎʿ:Lˑˏ/ⁱˊ;

    :cond_0
    return-void
.end method

.method public setIconEndPadding(F)V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lˆᵢ/ﾞᴵ;->ˈⁱ(F)V

    :cond_0
    return-void
.end method

.method public setIconEndPaddingResource(I)V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lˆᵢ/ﾞᴵ;->ﹶˎ:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Lˆᵢ/ﾞᴵ;->ˈⁱ(F)V

    :cond_0
    return-void
.end method

.method public setIconStartPadding(F)V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lˆᵢ/ﾞᴵ;->ᴵˑ(F)V

    :cond_0
    return-void
.end method

.method public setIconStartPaddingResource(I)V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lˆᵢ/ﾞᴵ;->ﹶˎ:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Lˆᵢ/ﾞᴵ;->ᴵˑ(F)V

    :cond_0
    return-void
.end method

.method public setInternalOnCheckedChangeListener(Lˈᐧ/ﾞᴵ;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "L\u02c8\u1427/\uff9e\u1d35;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setLayoutDirection(I)V

    return-void
.end method

.method public setLines(I)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setLines(I)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Chip does not support multi-line text"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaxLines(I)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setMaxLines(I)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Chip does not support multi-line text"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaxWidth(I)V
    .locals 1

    .prologue
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setMaxWidth(I)V

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    iput p1, v0, Lˆᵢ/ﾞᴵ;->ᵢʻ:I

    :cond_0
    return-void
.end method

.method public setMinLines(I)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setMinLines(I)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Chip does not support multi-line text"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->ᵎⁱ:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public setOnCloseIconClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->ˉٴ:Landroid/view/View$OnClickListener;

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->ˈ()V

    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lˆᵢ/ﾞᴵ;->ˉـ(Landroid/content/res/ColorStateList;)V

    :cond_0
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->ˑﹳ()V

    return-void
.end method

.method public setRippleColorResource(I)V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lˆᵢ/ﾞᴵ;->ﹶˎ:Landroid/content/Context;

    invoke-static {v1, p1}, Lʼˉ/ʽ;->ˈ(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lˆᵢ/ﾞᴵ;->ˉـ(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->ˑﹳ()V

    :cond_0
    return-void
.end method

.method public setShapeAppearanceModel(Lˋⁱ/ᵔʾ;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    invoke-virtual {v0, p1}, Lˋⁱ/ʼˎ;->setShapeAppearanceModel(Lˋⁱ/ᵔʾ;)V

    return-void
.end method

.method public setShowMotionSpec(Lˑˏ/ⁱˊ;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    iput-object p1, v0, Lˆᵢ/ﾞᴵ;->ـˊ:Lˑˏ/ⁱˊ;

    :cond_0
    return-void
.end method

.method public setShowMotionSpecResource(I)V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lˆᵢ/ﾞᴵ;->ﹶˎ:Landroid/content/Context;

    invoke-static {v1, p1}, Lˑˏ/ⁱˊ;->ﹳٴ(Landroid/content/Context;I)Lˑˏ/ⁱˊ;

    move-result-object p1

    iput-object p1, v0, Lˆᵢ/ﾞᴵ;->ـˊ:Lˑˏ/ⁱˊ;

    :cond_0
    return-void
.end method

.method public setSingleLine(Z)V
    .locals 1

    .prologue
    if-eqz p1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setSingleLine(Z)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Chip does not support multi-line text"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    iget-boolean v0, v0, Lˆᵢ/ﾞᴵ;->ˎـ:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move-object v0, p1

    :goto_0
    invoke-super {p0, v0, p2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    iget-object p2, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz p2, :cond_3

    iget-object v0, p2, Lˆᵢ/ﾞᴵ;->ٴﹳ:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iput-object p1, p2, Lˆᵢ/ﾞᴵ;->ٴﹳ:Ljava/lang/CharSequence;

    iget-object p1, p2, Lˆᵢ/ﾞᴵ;->ˈـ:Lˈᐧ/ʼˎ;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lˈᐧ/ʼˎ;->ˈ:Z

    invoke-virtual {p2}, Lˋⁱ/ʼˎ;->invalidateSelf()V

    invoke-virtual {p2}, Lˆᵢ/ﾞᴵ;->ᴵˊ()V

    :cond_3
    :goto_1
    return-void
.end method

.method public setTextAppearance(I)V
    .locals 3

    .prologue
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setTextAppearance(I)V

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    new-instance v1, Lﹳ/ˈ;

    iget-object v2, v0, Lˆᵢ/ﾞᴵ;->ﹶˎ:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lﹳ/ˈ;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lˆᵢ/ﾞᴵ;->ʿ(Lﹳ/ˈ;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->ᵎﹶ()V

    return-void
.end method

.method public final setTextAppearance(Landroid/content/Context;I)V
    .locals 2

    .prologue
    invoke-super {p0, p1, p2}, Landroid/widget/CheckBox;->setTextAppearance(Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz p1, :cond_0

    new-instance v0, Lﹳ/ˈ;

    iget-object v1, p1, Lˆᵢ/ﾞᴵ;->ﹶˎ:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lﹳ/ˈ;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Lˆᵢ/ﾞᴵ;->ʿ(Lﹳ/ˈ;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->ᵎﹶ()V

    return-void
.end method

.method public setTextAppearance(Lﹳ/ˈ;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lˆᵢ/ﾞᴵ;->ʿ(Lﹳ/ˈ;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->ᵎﹶ()V

    return-void
.end method

.method public setTextAppearanceResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/chip/Chip;->setTextAppearance(Landroid/content/Context;I)V

    return-void
.end method

.method public setTextEndPadding(F)V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    iget v1, v0, Lˆᵢ/ﾞᴵ;->ﹶ:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    iput p1, v0, Lˆᵢ/ﾞᴵ;->ﹶ:F

    invoke-virtual {v0}, Lˋⁱ/ʼˎ;->invalidateSelf()V

    invoke-virtual {v0}, Lˆᵢ/ﾞᴵ;->ᴵˊ()V

    :cond_0
    return-void
.end method

.method public setTextEndPaddingResource(I)V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lˆᵢ/ﾞᴵ;->ﹶˎ:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iget v1, v0, Lˆᵢ/ﾞᴵ;->ﹶ:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    iput p1, v0, Lˆᵢ/ﾞᴵ;->ﹶ:F

    invoke-virtual {v0}, Lˋⁱ/ʼˎ;->invalidateSelf()V

    invoke-virtual {v0}, Lˆᵢ/ﾞᴵ;->ᴵˊ()V

    :cond_0
    return-void
.end method

.method public final setTextSize(IF)V
    .locals 2

    .prologue
    invoke-super {p0, p1, p2}, Landroid/widget/CheckBox;->setTextSize(IF)V

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {p1, p2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iget-object p2, v0, Lˆᵢ/ﾞᴵ;->ˈـ:Lˈᐧ/ʼˎ;

    iget-object v1, p2, Lˈᐧ/ʼˎ;->ﾞᴵ:Lﹳ/ˈ;

    if-eqz v1, :cond_0

    iput p1, v1, Lﹳ/ˈ;->ﾞʻ:F

    iget-object p2, p2, Lˈᐧ/ʼˎ;->ﹳٴ:Landroid/text/TextPaint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v0}, Lˆᵢ/ﾞᴵ;->ᴵˊ()V

    invoke-virtual {v0}, Lˋⁱ/ʼˎ;->invalidateSelf()V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->ᵎﹶ()V

    return-void
.end method

.method public setTextStartPadding(F)V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    iget v1, v0, Lˆᵢ/ﾞᴵ;->ʻʿ:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    iput p1, v0, Lˆᵢ/ﾞᴵ;->ʻʿ:F

    invoke-virtual {v0}, Lˋⁱ/ʼˎ;->invalidateSelf()V

    invoke-virtual {v0}, Lˆᵢ/ﾞᴵ;->ᴵˊ()V

    :cond_0
    return-void
.end method

.method public setTextStartPaddingResource(I)V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lˆᵢ/ﾞᴵ;->ﹶˎ:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iget v1, v0, Lˆᵢ/ﾞᴵ;->ʻʿ:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    iput p1, v0, Lˆᵢ/ﾞᴵ;->ʻʿ:F

    invoke-virtual {v0}, Lˋⁱ/ʼˎ;->invalidateSelf()V

    invoke-virtual {v0}, Lˆᵢ/ﾞᴵ;->ᴵˊ()V

    :cond_0
    return-void
.end method

.method public final ʽ()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lˆᵢ/ﾞᴵ;->ˑ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lٴʼ/ﹳٴ;

    if-eqz v1, :cond_1

    check-cast v0, Lٴʼ/ﹳٴ;

    :cond_0
    const/4 v0, 0x0

    :cond_1
    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final ˈ()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->ʽ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lˆᵢ/ﾞᴵ;->ʾˊ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ˉٴ:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ˊˋ:Lˆᵢ/ˈ;

    invoke-static {p0, v0}, Lˋᵔ/ᵎˊ;->ˉʿ(Landroid/view/View;Lˋᵔ/ⁱˊ;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/chip/Chip;->ʼˈ:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lˋᵔ/ᵎˊ;->ˉʿ(Landroid/view/View;Lˋᵔ/ⁱˊ;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/chip/Chip;->ʼˈ:Z

    return-void
.end method

.method public final ˑﹳ()V
    .locals 4

    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    iget-object v1, v1, Lˆᵢ/ﾞᴵ;->ˑʼ:Landroid/content/res/ColorStateList;

    invoke-static {v1}, Lﹶʼ/ﹳٴ;->ﹳٴ(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/google/android/material/chip/Chip;->ٴᵢ:Landroid/graphics/drawable/RippleDrawable;

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ٴᵢ:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/Chip;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->ﾞᴵ()V

    return-void
.end method

.method public final ᵎﹶ()V
    .locals 4

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    iput-object v1, v0, Landroid/text/TextPaint;->drawableState:[I

    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getTextAppearance()Lﹳ/ˈ;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/material/chip/Chip;->ˈⁱ:Lˆᵢ/ⁱˊ;

    invoke-virtual {v1, v2, v0, v3}, Lﹳ/ˈ;->ˈ(Landroid/content/Context;Landroid/text/TextPaint;Lᴵˋ/ˊʻ;)V

    :cond_1
    return-void
.end method

.method public final ⁱˊ(I)V
    .locals 10

    .prologue
    iput p1, p0, Lcom/google/android/material/chip/Chip;->ˑٴ:I

    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->ᵔٴ:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->ˊʻ:Landroid/graphics/drawable/InsetDrawable;

    if-eqz p1, :cond_0

    if-eqz p1, :cond_2

    iput-object v1, p0, Lcom/google/android/material/chip/Chip;->ˊʻ:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setMinWidth(I)V

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getChipMinHeight()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMinHeight(I)V

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->ˑﹳ()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->ˑﹳ()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    iget v0, v0, Lˆᵢ/ﾞᴵ;->ˈˏ:F

    float-to-int v0, v0

    sub-int v0, p1, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v3, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    invoke-virtual {v3}, Lˆᵢ/ﾞᴵ;->getIntrinsicWidth()I

    move-result v3

    sub-int v3, p1, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-gtz v3, :cond_4

    if-gtz v0, :cond_4

    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->ˊʻ:Landroid/graphics/drawable/InsetDrawable;

    if-eqz p1, :cond_3

    if-eqz p1, :cond_2

    iput-object v1, p0, Lcom/google/android/material/chip/Chip;->ˊʻ:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setMinWidth(I)V

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getChipMinHeight()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMinHeight(I)V

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->ˑﹳ()V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->ˑﹳ()V

    return-void

    :cond_4
    if-lez v3, :cond_5

    div-int/lit8 v3, v3, 0x2

    move v6, v3

    goto :goto_0

    :cond_5
    move v6, v2

    :goto_0
    if-lez v0, :cond_6

    div-int/lit8 v2, v0, 0x2

    :cond_6
    move v7, v2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ˊʻ:Landroid/graphics/drawable/InsetDrawable;

    if-eqz v0, :cond_7

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->ˊʻ:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/InsetDrawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-ne v1, v7, :cond_7

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    if-ne v1, v7, :cond_7

    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-ne v1, v6, :cond_7

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-ne v0, v6, :cond_7

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->ˑﹳ()V

    return-void

    :cond_7
    invoke-virtual {p0}, Landroid/widget/TextView;->getMinHeight()I

    move-result v0

    if-eq v0, p1, :cond_8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMinHeight(I)V

    :cond_8
    invoke-virtual {p0}, Landroid/widget/TextView;->getMinWidth()I

    move-result v0

    if-eq v0, p1, :cond_9

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMinWidth(I)V

    :cond_9
    new-instance v4, Landroid/graphics/drawable/InsetDrawable;

    iget-object v5, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    move v8, v6

    move v9, v7

    invoke-direct/range {v4 .. v9}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iput-object v4, p0, Lcom/google/android/material/chip/Chip;->ˊʻ:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->ˑﹳ()V

    return-void
.end method

.method public final ﾞᴵ()V
    .locals 4

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v1, v0, Lˆᵢ/ﾞᴵ;->ⁱᴵ:F

    iget v2, v0, Lˆᵢ/ﾞᴵ;->ﹶ:F

    add-float/2addr v1, v2

    invoke-virtual {v0}, Lˆᵢ/ﾞᴵ;->ʾᵎ()F

    move-result v0

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->ᴵᵔ:Lˆᵢ/ﾞᴵ;

    iget v2, v1, Lˆᵢ/ﾞᴵ;->ʿـ:F

    iget v3, v1, Lˆᵢ/ﾞᴵ;->ʻʿ:F

    add-float/2addr v2, v3

    invoke-virtual {v1}, Lˆᵢ/ﾞᴵ;->ـˆ()F

    move-result v1

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/google/android/material/chip/Chip;->ˊʻ:Landroid/graphics/drawable/InsetDrawable;

    if-eqz v2, :cond_1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/google/android/material/chip/Chip;->ˊʻ:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/InsetDrawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v3

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v2

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v1, v2, v0, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_2
    :goto_0
    return-void
.end method
