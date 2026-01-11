.class public Landroidx/preference/Preference;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/preference/Preference;",
        ">;"
    }
.end annotation


# instance fields
.field public ʻˋ:Z

.field public final ʻᵎ:Z

.field public ʼˈ:Z

.field public ʽʽ:Lʼ/ᵎﹶ;

.field public final ʾˋ:Landroid/content/Context;

.field public ʿ:Z

.field public final ʿᵢ:Z

.field public ˆﾞ:Ljava/lang/String;

.field public final ˈʿ:Ljava/lang/String;

.field public ˈˏ:Lʻᐧ/ـˆ;

.field public ˈٴ:J

.field public final ˈⁱ:Ljava/lang/Object;

.field public ˉـ:Z

.field public ˉٴ:I

.field public ˊʻ:Lʻʿ/ˈ;

.field public ˊˋ:Z

.field public ˊᵔ:I

.field public ˋᵔ:Z

.field public ˏᵢ:Z

.field public ˑʼ:Lʻᐧ/ˉʿ;

.field public ˑٴ:Landroid/os/Bundle;

.field public ـˏ:Z

.field public final ـﹶ:I

.field public ٴʼ:Ljava/lang/CharSequence;

.field public ٴᵢ:Lﹶﾞ/ⁱי;

.field public ٴﹳ:Lʻᐧ/ᵔʾ;

.field public final ᐧᴵ:Z

.field public final ᐧﾞ:Z

.field public final ᴵʼ:Z

.field public ᴵˊ:Lʻᐧ/ʼʼ;

.field public ᴵˑ:Z

.field public ᴵᵔ:Z

.field public final ᵎʻ:Landroidx/leanback/widget/ʼʼ;

.field public ᵎˊ:I

.field public final ᵎᵔ:Z

.field public ᵎⁱ:Ljava/lang/CharSequence;

.field public ᵔי:Landroid/graphics/drawable/Drawable;

.field public ᵔٴ:Landroid/content/Intent;

.field public final ﹳـ:Ljava/lang/String;

.field public ﹳﹳ:Landroidx/preference/PreferenceGroup;

.field public ﹶᐧ:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x7f0404fa

    const v1, 0x101008e

    invoke-static {p1, v0, v1}, Lˉٴ/ⁱˊ;->ⁱˊ(Landroid/content/Context;II)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Landroidx/preference/Preference;->ˉٴ:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/preference/Preference;->ˋᵔ:Z

    iput-boolean v1, p0, Landroidx/preference/Preference;->ˊˋ:Z

    iput-boolean v1, p0, Landroidx/preference/Preference;->ـˏ:Z

    iput-boolean v1, p0, Landroidx/preference/Preference;->ᴵˑ:Z

    iput-boolean v1, p0, Landroidx/preference/Preference;->ˉـ:Z

    iput-boolean v1, p0, Landroidx/preference/Preference;->ʿ:Z

    iput-boolean v1, p0, Landroidx/preference/Preference;->ʿᵢ:Z

    iput-boolean v1, p0, Landroidx/preference/Preference;->ᵎᵔ:Z

    iput-boolean v1, p0, Landroidx/preference/Preference;->ᐧᴵ:Z

    iput-boolean v1, p0, Landroidx/preference/Preference;->ʻᵎ:Z

    const v2, 0x7f0e0124

    iput v2, p0, Landroidx/preference/Preference;->ˊᵔ:I

    new-instance v3, Landroidx/leanback/widget/ʼʼ;

    const/4 v4, 0x3

    invoke-direct {v3, v4, p0}, Landroidx/leanback/widget/ʼʼ;-><init>(ILjava/lang/Object;)V

    iput-object v3, p0, Landroidx/preference/Preference;->ᵎʻ:Landroidx/leanback/widget/ʼʼ;

    iput-object p1, p0, Landroidx/preference/Preference;->ʾˋ:Landroid/content/Context;

    sget-object v3, Lʻᐧ/ᴵˊ;->ᵎﹶ:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0x17

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Landroidx/preference/Preference;->ᵎˊ:I

    const/16 p2, 0x1a

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    iput-object p2, p0, Landroidx/preference/Preference;->ˆﾞ:Ljava/lang/String;

    const/16 p2, 0x22

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    if-nez p2, :cond_1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    :cond_1
    iput-object p2, p0, Landroidx/preference/Preference;->ᵎⁱ:Ljava/lang/CharSequence;

    const/16 p2, 0x21

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    if-nez p2, :cond_2

    const/4 p2, 0x7

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    :cond_2
    iput-object p2, p0, Landroidx/preference/Preference;->ٴʼ:Ljava/lang/CharSequence;

    const/16 p2, 0x8

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    const/16 p4, 0x1c

    invoke-virtual {p1, p4, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroidx/preference/Preference;->ˉٴ:I

    const/16 p2, 0x16

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    const/16 p2, 0xd

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_3
    iput-object p2, p0, Landroidx/preference/Preference;->ˈʿ:Ljava/lang/String;

    const/4 p2, 0x3

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    const/16 p4, 0x1b

    invoke-virtual {p1, p4, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Landroidx/preference/Preference;->ˊᵔ:I

    const/16 p2, 0x9

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    const/16 p4, 0x23

    invoke-virtual {p1, p4, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Landroidx/preference/Preference;->ـﹶ:I

    const/4 p2, 0x2

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    const/16 p4, 0x15

    invoke-virtual {p1, p4, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->ˋᵔ:Z

    const/4 p2, 0x5

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    const/16 p4, 0x1e

    invoke-virtual {p1, p4, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->ˊˋ:Z

    const/16 p2, 0x1d

    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->ـˏ:Z

    const/16 p2, 0x13

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_4

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_4
    iput-object p2, p0, Landroidx/preference/Preference;->ﹳـ:Ljava/lang/String;

    iget-boolean p2, p0, Landroidx/preference/Preference;->ˊˋ:Z

    const/16 p4, 0x10

    invoke-virtual {p1, p4, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p1, p4, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->ʿᵢ:Z

    iget-boolean p2, p0, Landroidx/preference/Preference;->ˊˋ:Z

    const/16 p4, 0x11

    invoke-virtual {p1, p4, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p1, p4, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->ᵎᵔ:Z

    const/16 p2, 0x12

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p4

    if-eqz p4, :cond_5

    invoke-virtual {p0, p1, p2}, Landroidx/preference/Preference;->ᵔﹳ(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/Preference;->ˈⁱ:Ljava/lang/Object;

    goto :goto_0

    :cond_5
    const/16 p2, 0xb

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p4

    if-eqz p4, :cond_6

    invoke-virtual {p0, p1, p2}, Landroidx/preference/Preference;->ᵔﹳ(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/Preference;->ˈⁱ:Ljava/lang/Object;

    :cond_6
    :goto_0
    const/16 p2, 0xc

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    const/16 p4, 0x1f

    invoke-virtual {p1, p4, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->ʻᵎ:Z

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p4

    iput-boolean p4, p0, Landroidx/preference/Preference;->ᐧﾞ:Z

    if-eqz p4, :cond_7

    const/16 p4, 0xe

    invoke-virtual {p1, p4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->ᐧᴵ:Z

    :cond_7
    const/16 p2, 0xf

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    const/16 p4, 0x18

    invoke-virtual {p1, p4, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->ˏᵢ:Z

    const/16 p2, 0x19

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->ʿ:Z

    const/16 p2, 0x14

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->ᴵʼ:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static ـˆ(Landroid/view/View;Z)V
    .locals 2

    .prologue
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p1}, Landroidx/preference/Preference;->ـˆ(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    .prologue
    check-cast p1, Landroidx/preference/Preference;

    iget v0, p0, Landroidx/preference/Preference;->ˉٴ:I

    iget v1, p1, Landroidx/preference/Preference;->ˉٴ:I

    if-eq v0, v1, :cond_0

    sub-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->ᵎⁱ:Ljava/lang/CharSequence;

    iget-object v1, p1, Landroidx/preference/Preference;->ᵎⁱ:Ljava/lang/CharSequence;

    if-ne v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    if-nez v0, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    if-nez v1, :cond_3

    const/4 p1, -0x1

    return p1

    :cond_3
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Landroidx/preference/Preference;->ᵎⁱ:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/preference/Preference;->ᵎⁱ:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x20

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->ᵔᵢ()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ʻٴ(Ljava/lang/String;)V
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroidx/preference/Preference;->ᴵᵔ()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->ﾞᴵ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->ᵎﹶ()Lʼ/ᵎﹶ;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroidx/preference/Preference;->ˆﾞ:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lʼ/ᵎﹶ;->ʽʽ(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v0, p0, Landroidx/preference/Preference;->ᴵˊ:Lʻᐧ/ʼʼ;

    invoke-virtual {v0}, Lʻᐧ/ʼʼ;->ⁱˊ()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Landroidx/preference/Preference;->ˆﾞ:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Landroidx/preference/Preference;->ᴵˊ:Lʻᐧ/ʼʼ;

    iget-boolean p1, p1, Lʻᐧ/ʼʼ;->ˑﹳ:Z

    if-nez p1, :cond_3

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final ʼʼ(Ljava/lang/String;)V
    .locals 1

    .prologue
    iput-object p1, p0, Landroidx/preference/Preference;->ˆﾞ:Ljava/lang/String;

    iget-boolean v0, p0, Landroidx/preference/Preference;->ʼˈ:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/preference/Preference;->ˆﾞ:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/preference/Preference;->ʼˈ:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Preference does not have a key assigned."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method public ʼˎ()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroidx/preference/Preference;->ˋᵔ:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/preference/Preference;->ᴵˑ:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/preference/Preference;->ˉـ:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ʼᐧ()V
    .locals 0

    invoke-virtual {p0}, Landroidx/preference/Preference;->ˊʻ()V

    return-void
.end method

.method public ʽ(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    iget-object v0, p0, Landroidx/preference/Preference;->ˆﾞ:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/preference/Preference;->ʻˋ:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->יـ()Landroid/os/Parcelable;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/preference/Preference;->ʻˋ:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/preference/Preference;->ˆﾞ:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Derived class did not call super.onSaveInstanceState()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method public final ʽʽ(Z)V
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroidx/preference/Preference;->ʿ:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroidx/preference/Preference;->ʿ:Z

    iget-object p1, p0, Landroidx/preference/Preference;->ˈˏ:Lʻᐧ/ـˆ;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lʻᐧ/ـˆ;->ᵔᵢ:Landroid/os/Handler;

    iget-object p1, p1, Lʻᐧ/ـˆ;->ʼˎ:Landroidx/leanback/widget/ᵔʾ;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public ʽﹳ(Landroid/view/View;)V
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroidx/preference/Preference;->ʼˎ()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Landroidx/preference/Preference;->ˊˋ:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->ˉˆ()V

    iget-object p1, p0, Landroidx/preference/Preference;->ٴᵢ:Lﹶﾞ/ⁱי;

    if-eqz p1, :cond_1

    iget-object v0, p1, Lﹶﾞ/ⁱי;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Landroidx/preference/PreferenceGroup;

    const v1, 0x7fffffff

    iput v1, v0, Landroidx/preference/PreferenceGroup;->ʼـ:I

    iget-object p1, p1, Lﹶﾞ/ⁱי;->ʽʽ:Ljava/lang/Object;

    check-cast p1, Lʻᐧ/ـˆ;

    iget-object v0, p1, Lʻᐧ/ـˆ;->ᵔᵢ:Landroid/os/Handler;

    iget-object p1, p1, Lʻᐧ/ـˆ;->ʼˎ:Landroidx/leanback/widget/ᵔʾ;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    iget-object p1, p0, Landroidx/preference/Preference;->ᴵˊ:Lʻᐧ/ʼʼ;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lʻᐧ/ʼʼ;->ᵔᵢ:Lʻᐧ/ˏי;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Lʻᐧ/ˏי;->ˎˉ(Landroidx/preference/Preference;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Landroidx/preference/Preference;->ᵔٴ:Landroid/content/Intent;

    if-eqz p1, :cond_3

    iget-object v0, p0, Landroidx/preference/Preference;->ʾˋ:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public ʾˋ(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    iget-object v0, p0, Landroidx/preference/Preference;->ٴﹳ:Lʻᐧ/ᵔʾ;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/preference/Preference;->ٴʼ:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Landroidx/preference/Preference;->ٴʼ:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/preference/Preference;->ˆʾ()V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Preference already has a SummaryProvider set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ʾᵎ(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    iget-object v0, p0, Landroidx/preference/Preference;->ᵔי:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroidx/preference/Preference;->ᵔי:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/preference/Preference;->ᵎˊ:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->ˆʾ()V

    :cond_0
    return-void
.end method

.method public ˆʾ()V
    .locals 3

    .prologue
    iget-object v0, p0, Landroidx/preference/Preference;->ˈˏ:Lʻᐧ/ـˆ;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lʻᐧ/ـˆ;->ﾞᴵ:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v0, v0, Lˋˋ/ᴵˑ;->ﹳٴ:Lˋˋ/ˉـ;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Lˋˋ/ˉـ;->ˈ(IILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final ˈ()Landroid/os/Bundle;
    .locals 1

    .prologue
    iget-object v0, p0, Landroidx/preference/Preference;->ˑٴ:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroidx/preference/Preference;->ˑٴ:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->ˑٴ:Landroid/os/Bundle;

    return-object v0
.end method

.method public ˈٴ()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/preference/Preference;->ʼˎ()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final ˉʿ(Lʻᐧ/ʼʼ;)V
    .locals 3

    .prologue
    iput-object p1, p0, Landroidx/preference/Preference;->ᴵˊ:Lʻᐧ/ʼʼ;

    iget-boolean v0, p0, Landroidx/preference/Preference;->ᴵᵔ:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lʻᐧ/ʼʼ;->ʽ()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/preference/Preference;->ˈٴ:J

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->ᵎﹶ()Lʼ/ᵎﹶ;

    move-result-object p1

    iget-object v0, p0, Landroidx/preference/Preference;->ˈⁱ:Ljava/lang/Object;

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->ˏי(Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->ᴵᵔ()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Landroidx/preference/Preference;->ᴵˊ:Lʻᐧ/ʼʼ;

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroidx/preference/Preference;->ᵎﹶ()Lʼ/ᵎﹶ;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Landroidx/preference/Preference;->ᴵˊ:Lʻᐧ/ʼʼ;

    invoke-virtual {p1}, Lʻᐧ/ʼʼ;->ˈ()Landroid/content/SharedPreferences;

    move-result-object p1

    goto :goto_1

    :cond_3
    :goto_0
    move-object p1, v1

    :goto_1
    iget-object v2, p0, Landroidx/preference/Preference;->ˆﾞ:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->ˏי(Ljava/lang/Object;)V

    return-void

    :cond_5
    :goto_2
    if-eqz v0, :cond_6

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->ˏי(Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

.method public ˉˆ()V
    .locals 0

    return-void
.end method

.method public final ˊʻ()V
    .locals 3

    .prologue
    iget-object v0, p0, Landroidx/preference/Preference;->ﹳـ:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroidx/preference/Preference;->ᴵˊ:Lʻᐧ/ʼʼ;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lʻᐧ/ʼʼ;->ᵎﹶ:Landroidx/preference/PreferenceScreen;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->ˉٴ(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_2

    iget-object v0, v2, Landroidx/preference/Preference;->ﹶᐧ:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public ˏי(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public ˑﹳ()J
    .locals 2

    iget-wide v0, p0, Landroidx/preference/Preference;->ˈٴ:J

    return-wide v0
.end method

.method public יـ()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/preference/Preference;->ʻˋ:Z

    sget-object v0, Landroid/view/AbsSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    return-object v0
.end method

.method public ٴﹶ(Z)V
    .locals 5

    .prologue
    iget-object v0, p0, Landroidx/preference/Preference;->ﹶᐧ:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/preference/Preference;

    iget-boolean v4, v3, Landroidx/preference/Preference;->ᴵˑ:Z

    if-ne v4, p1, :cond_1

    xor-int/lit8 v4, p1, 0x1

    iput-boolean v4, v3, Landroidx/preference/Preference;->ᴵˑ:Z

    invoke-virtual {v3}, Landroidx/preference/Preference;->ˈٴ()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->ٴﹶ(Z)V

    invoke-virtual {v3}, Landroidx/preference/Preference;->ˆʾ()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final ᴵˊ(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    iget-object v0, p0, Landroidx/preference/Preference;->ᵎⁱ:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Landroidx/preference/Preference;->ᵎⁱ:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/preference/Preference;->ˆʾ()V

    :cond_0
    return-void
.end method

.method public final ᴵᵔ()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroidx/preference/Preference;->ᴵˊ:Lʻᐧ/ʼʼ;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/preference/Preference;->ـˏ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/preference/Preference;->ˆﾞ:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ᵎﹶ()Lʼ/ᵎﹶ;
    .locals 2

    .prologue
    iget-object v0, p0, Landroidx/preference/Preference;->ʽʽ:Lʼ/ᵎﹶ;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->ᴵˊ:Lʻᐧ/ʼʼ;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    return-object v1
.end method

.method public ᵔʾ(Lʻᐧ/ʾˋ;)V
    .locals 8

    .prologue
    iget-object v0, p1, Lˋˋ/ʼـ;->ʾˋ:Landroid/view/View;

    iget-object v1, p0, Landroidx/preference/Preference;->ᵎʻ:Landroidx/leanback/widget/ʼʼ;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    const v2, 0x1020010

    invoke-virtual {p1, v2}, Lʻᐧ/ʾˋ;->יـ(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroidx/preference/Preference;->ᵔᵢ()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    move-object v2, v4

    :goto_0
    const v5, 0x1020016

    invoke-virtual {p1, v5}, Lʻᐧ/ʾˋ;->יـ(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_4

    iget-object v6, p0, Landroidx/preference/Preference;->ᵎⁱ:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v6, p0, Landroidx/preference/Preference;->ᐧﾞ:Z

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Landroidx/preference/Preference;->ᐧᴵ:Z

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    :cond_2
    iget-boolean v6, p0, Landroidx/preference/Preference;->ˊˋ:Z

    if-nez v6, :cond_4

    invoke-virtual {p0}, Landroidx/preference/Preference;->ʼˎ()Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_1
    const v2, 0x1020006

    invoke-virtual {p1, v2}, Lʻᐧ/ʾˋ;->יـ(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/4 v5, 0x4

    if-eqz v2, :cond_a

    iget v6, p0, Landroidx/preference/Preference;->ᵎˊ:I

    if-nez v6, :cond_5

    iget-object v7, p0, Landroidx/preference/Preference;->ᵔי:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_7

    :cond_5
    iget-object v7, p0, Landroidx/preference/Preference;->ᵔי:Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_6

    iget-object v7, p0, Landroidx/preference/Preference;->ʾˋ:Landroid/content/Context;

    invoke-static {v7, v6}, Lᴵˋ/ˊʻ;->ﹳᐧ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroidx/preference/Preference;->ᵔי:Landroid/graphics/drawable/Drawable;

    :cond_6
    iget-object v6, p0, Landroidx/preference/Preference;->ᵔי:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_7

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    iget-object v6, p0, Landroidx/preference/Preference;->ᵔי:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_8

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    :cond_8
    iget-boolean v6, p0, Landroidx/preference/Preference;->ˏᵢ:Z

    if-eqz v6, :cond_9

    move v6, v5

    goto :goto_2

    :cond_9
    move v6, v3

    :goto_2
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_a
    :goto_3
    const v2, 0x7f0b01f1

    invoke-virtual {p1, v2}, Lʻᐧ/ʾˋ;->יـ(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_b

    const v2, 0x102003e

    invoke-virtual {p1, v2}, Lʻᐧ/ʾˋ;->יـ(I)Landroid/view/View;

    move-result-object v2

    :cond_b
    if-eqz v2, :cond_e

    iget-object v6, p0, Landroidx/preference/Preference;->ᵔי:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_c

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_c
    iget-boolean v1, p0, Landroidx/preference/Preference;->ˏᵢ:Z

    if-eqz v1, :cond_d

    move v3, v5

    :cond_d
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    :goto_4
    iget-boolean v1, p0, Landroidx/preference/Preference;->ʻᵎ:Z

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Landroidx/preference/Preference;->ʼˎ()Z

    move-result v1

    invoke-static {v0, v1}, Landroidx/preference/Preference;->ـˆ(Landroid/view/View;Z)V

    goto :goto_5

    :cond_f
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/preference/Preference;->ـˆ(Landroid/view/View;Z)V

    :goto_5
    iget-boolean v1, p0, Landroidx/preference/Preference;->ˊˋ:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-boolean v2, p0, Landroidx/preference/Preference;->ʿᵢ:Z

    iput-boolean v2, p1, Lʻᐧ/ʾˋ;->ˉـ:Z

    iget-boolean v2, p0, Landroidx/preference/Preference;->ᵎᵔ:Z

    iput-boolean v2, p1, Lʻᐧ/ʾˋ;->ʿ:Z

    iget-boolean p1, p0, Landroidx/preference/Preference;->ᴵʼ:Z

    if-eqz p1, :cond_10

    iget-object v2, p0, Landroidx/preference/Preference;->ˑʼ:Lʻᐧ/ˉʿ;

    if-nez v2, :cond_10

    new-instance v2, Lʻᐧ/ˉʿ;

    invoke-direct {v2, p0}, Lʻᐧ/ˉʿ;-><init>(Landroidx/preference/Preference;)V

    iput-object v2, p0, Landroidx/preference/Preference;->ˑʼ:Lʻᐧ/ˉʿ;

    :cond_10
    if-eqz p1, :cond_11

    iget-object v2, p0, Landroidx/preference/Preference;->ˑʼ:Lʻᐧ/ˉʿ;

    goto :goto_6

    :cond_11
    move-object v2, v4

    :goto_6
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setLongClickable(Z)V

    if-eqz p1, :cond_12

    if-nez v1, :cond_12

    sget-object p1, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_12
    return-void
.end method

.method public ᵔᵢ()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Landroidx/preference/Preference;->ٴﹳ:Lʻᐧ/ᵔʾ;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lʻᐧ/ᵔʾ;->ᵔﹳ(Landroidx/preference/Preference;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->ٴʼ:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public ᵔﹳ(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final ᵢˏ(I)V
    .locals 1

    .prologue
    iget v0, p0, Landroidx/preference/Preference;->ˉٴ:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Landroidx/preference/Preference;->ˉٴ:I

    iget-object p1, p0, Landroidx/preference/Preference;->ˈˏ:Lʻᐧ/ـˆ;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lʻᐧ/ـˆ;->ᵔᵢ:Landroid/os/Handler;

    iget-object p1, p1, Lʻᐧ/ـˆ;->ʼˎ:Landroidx/leanback/widget/ᵔʾ;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public ⁱˊ(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    iget-object v0, p0, Landroidx/preference/Preference;->ˆﾞ:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/preference/Preference;->ˆﾞ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/preference/Preference;->ʻˋ:Z

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->ﹳᐧ(Landroid/os/Parcelable;)V

    iget-boolean p1, p0, Landroidx/preference/Preference;->ʻˋ:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Derived class did not call super.onRestoreInstanceState()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final ﹳٴ(Ljava/io/Serializable;)V
    .locals 2

    .prologue
    iget-object v0, p0, Landroidx/preference/Preference;->ˊʻ:Lʻʿ/ˈ;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lʻʿ/ˈ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lar/tvplayer/tv/base/ui/OnOffPreference;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f13018d

    goto :goto_0

    :cond_0
    const p1, 0x7f13018b

    :goto_0
    iget-object v1, v0, Landroidx/preference/Preference;->ʾˋ:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->ᴵˊ(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public ﹳᐧ(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/preference/Preference;->ʻˋ:Z

    sget-object v0, Landroid/view/AbsSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong state class -- expecting Preference State"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public ﾞʻ()V
    .locals 4

    .prologue
    iget-object v0, p0, Landroidx/preference/Preference;->ﹳـ:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroidx/preference/Preference;->ᴵˊ:Lʻᐧ/ʼʼ;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v1, Lʻᐧ/ʼʼ;->ᵎﹶ:Landroidx/preference/PreferenceScreen;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->ˉٴ(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_5

    iget-object v0, v2, Landroidx/preference/Preference;->ﹶᐧ:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v2, Landroidx/preference/Preference;->ﹶᐧ:Ljava/util/ArrayList;

    :cond_3
    iget-object v0, v2, Landroidx/preference/Preference;->ﹶᐧ:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/preference/Preference;->ˈٴ()Z

    move-result v0

    iget-boolean v1, p0, Landroidx/preference/Preference;->ᴵˑ:Z

    if-ne v1, v0, :cond_4

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Landroidx/preference/Preference;->ᴵˑ:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->ˈٴ()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->ٴﹶ(Z)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->ˆʾ()V

    :cond_4
    :goto_1
    return-void

    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Dependency \""

    const-string v3, "\" not found for preference \""

    invoke-static {v2, v0, v3}, Lˉˆ/ٴᴵ;->ˉˆ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroidx/preference/Preference;->ˆﾞ:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" (title: \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/preference/Preference;->ᵎⁱ:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final ﾞᴵ(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroidx/preference/Preference;->ᴵᵔ()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->ᵎﹶ()Lʼ/ᵎﹶ;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/preference/Preference;->ˆﾞ:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lʼ/ᵎﹶ;->ʻٴ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Landroidx/preference/Preference;->ᴵˊ:Lʻᐧ/ʼʼ;

    invoke-virtual {v0}, Lʻᐧ/ʼʼ;->ˈ()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Landroidx/preference/Preference;->ˆﾞ:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
