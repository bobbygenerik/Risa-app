.class public final Lⁱʾ/ˑﹳ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʻٴ:I

.field public static final ʼʼ:[I

.field public static final ʽʽ:[I

.field public static final ʾˋ:[Z

.field public static final ʾᵎ:[I

.field public static final ˈٴ:[I

.field public static final ـˆ:I

.field public static final ᴵˊ:[I

.field public static final ᴵᵔ:[I

.field public static final ᵢˏ:[I


# instance fields
.field public ʼˎ:I

.field public ʼᐧ:I

.field public ʽ:Z

.field public ʽﹳ:I

.field public ˆʾ:I

.field public ˈ:Z

.field public ˉʿ:I

.field public ˉˆ:I

.field public ˏי:I

.field public ˑﹳ:I

.field public יـ:I

.field public ٴﹶ:I

.field public ᵎﹶ:I

.field public ᵔʾ:I

.field public ᵔᵢ:I

.field public ᵔﹳ:I

.field public final ⁱˊ:Landroid/text/SpannableStringBuilder;

.field public final ﹳٴ:Ljava/util/ArrayList;

.field public ﹳᐧ:I

.field public ﾞʻ:I

.field public ﾞᴵ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v0, v0, v0, v1}, Lⁱʾ/ˑﹳ;->ʽ(IIII)I

    move-result v0

    sput v0, Lⁱʾ/ˑﹳ;->ʻٴ:I

    invoke-static {v1, v1, v1, v1}, Lⁱʾ/ˑﹳ;->ʽ(IIII)I

    move-result v2

    sput v2, Lⁱʾ/ˑﹳ;->ـˆ:I

    const/4 v0, 0x3

    invoke-static {v1, v1, v1, v0}, Lⁱʾ/ˑﹳ;->ʽ(IIII)I

    move-result v3

    const/4 v0, 0x7

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lⁱʾ/ˑﹳ;->ʾᵎ:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lⁱʾ/ˑﹳ;->ʼʼ:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lⁱʾ/ˑﹳ;->ᵢˏ:[I

    new-array v1, v0, [Z

    fill-array-data v1, :array_3

    sput-object v1, Lⁱʾ/ˑﹳ;->ʾˋ:[Z

    move v4, v2

    move v5, v2

    move v6, v3

    move v7, v2

    move v8, v2

    filled-new-array/range {v2 .. v8}, [I

    move-result-object v1

    sput-object v1, Lⁱʾ/ˑﹳ;->ᴵˊ:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_4

    sput-object v1, Lⁱʾ/ˑﹳ;->ʽʽ:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lⁱʾ/ˑﹳ;->ˈٴ:[I

    move v7, v3

    move v3, v2

    move v6, v2

    move v8, v7

    filled-new-array/range {v2 .. v8}, [I

    move-result-object v0

    sput-object v0, Lⁱʾ/ˑﹳ;->ᴵᵔ:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x1
    .end array-data

    :array_3
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x3
        0x4
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3
        0x3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lⁱʾ/ˑﹳ;->ﹳٴ:Ljava/util/ArrayList;

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lⁱʾ/ˑﹳ;->ⁱˊ:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Lⁱʾ/ˑﹳ;->ˈ()V

    return-void
.end method

.method public static ʽ(IIII)I
    .locals 4

    .prologue
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lᐧˎ/ﹳٴ;->ᵎﹶ(II)V

    invoke-static {p1, v0}, Lᐧˎ/ﹳٴ;->ᵎﹶ(II)V

    invoke-static {p2, v0}, Lᐧˎ/ﹳٴ;->ᵎﹶ(II)V

    invoke-static {p3, v0}, Lᐧˎ/ﹳٴ;->ᵎﹶ(II)V

    const/4 v0, 0x1

    const/16 v1, 0xff

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    if-eq p3, v0, :cond_0

    const/4 v3, 0x2

    if-eq p3, v3, :cond_2

    const/4 v3, 0x3

    if-eq p3, v3, :cond_1

    :cond_0
    move p3, v1

    goto :goto_0

    :cond_1
    move p3, v2

    goto :goto_0

    :cond_2
    const/16 p3, 0x7f

    :goto_0
    if-le p0, v0, :cond_3

    move p0, v1

    goto :goto_1

    :cond_3
    move p0, v2

    :goto_1
    if-le p1, v0, :cond_4

    move p1, v1

    goto :goto_2

    :cond_4
    move p1, v2

    :goto_2
    if-le p2, v0, :cond_5

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    invoke-static {p3, p0, p1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final ˈ()V
    .locals 2

    iget-object v0, p0, Lⁱʾ/ˑﹳ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lⁱʾ/ˑﹳ;->ⁱˊ:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    const/4 v0, -0x1

    iput v0, p0, Lⁱʾ/ˑﹳ;->ˉˆ:I

    iput v0, p0, Lⁱʾ/ˑﹳ;->ʼᐧ:I

    iput v0, p0, Lⁱʾ/ˑﹳ;->ᵔﹳ:I

    iput v0, p0, Lⁱʾ/ˑﹳ;->יـ:I

    const/4 v0, 0x0

    iput v0, p0, Lⁱʾ/ˑﹳ;->ʽﹳ:I

    iput-boolean v0, p0, Lⁱʾ/ˑﹳ;->ʽ:Z

    iput-boolean v0, p0, Lⁱʾ/ˑﹳ;->ˈ:Z

    const/4 v1, 0x4

    iput v1, p0, Lⁱʾ/ˑﹳ;->ˑﹳ:I

    iput-boolean v0, p0, Lⁱʾ/ˑﹳ;->ﾞᴵ:Z

    iput v0, p0, Lⁱʾ/ˑﹳ;->ᵎﹶ:I

    iput v0, p0, Lⁱʾ/ˑﹳ;->ᵔᵢ:I

    iput v0, p0, Lⁱʾ/ˑﹳ;->ʼˎ:I

    const/16 v1, 0xf

    iput v1, p0, Lⁱʾ/ˑﹳ;->ˆʾ:I

    iput v0, p0, Lⁱʾ/ˑﹳ;->ٴﹶ:I

    iput v0, p0, Lⁱʾ/ˑﹳ;->ﾞʻ:I

    iput v0, p0, Lⁱʾ/ˑﹳ;->ˉʿ:I

    sget v0, Lⁱʾ/ˑﹳ;->ـˆ:I

    iput v0, p0, Lⁱʾ/ˑﹳ;->ᵔʾ:I

    sget v1, Lⁱʾ/ˑﹳ;->ʻٴ:I

    iput v1, p0, Lⁱʾ/ˑﹳ;->ﹳᐧ:I

    iput v0, p0, Lⁱʾ/ˑﹳ;->ˏי:I

    return-void
.end method

.method public final ˑﹳ(ZZ)V
    .locals 5

    .prologue
    iget v0, p0, Lⁱʾ/ˑﹳ;->ˉˆ:I

    const/16 v1, 0x21

    iget-object v2, p0, Lⁱʾ/ˑﹳ;->ⁱˊ:Landroid/text/SpannableStringBuilder;

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    if-nez p1, :cond_1

    new-instance p1, Landroid/text/style/StyleSpan;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget v0, p0, Lⁱʾ/ˑﹳ;->ˉˆ:I

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, p1, v0, v4, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iput v3, p0, Lⁱʾ/ˑﹳ;->ˉˆ:I

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    iput p1, p0, Lⁱʾ/ˑﹳ;->ˉˆ:I

    :cond_1
    :goto_0
    iget p1, p0, Lⁱʾ/ˑﹳ;->ʼᐧ:I

    if-eq p1, v3, :cond_2

    if-nez p2, :cond_3

    new-instance p1, Landroid/text/style/UnderlineSpan;

    invoke-direct {p1}, Landroid/text/style/UnderlineSpan;-><init>()V

    iget p2, p0, Lⁱʾ/ˑﹳ;->ʼᐧ:I

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-virtual {v2, p1, p2, v0, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iput v3, p0, Lⁱʾ/ˑﹳ;->ʼᐧ:I

    return-void

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    iput p1, p0, Lⁱʾ/ˑﹳ;->ʼᐧ:I

    :cond_3
    return-void
.end method

.method public final ⁱˊ()Landroid/text/SpannableString;
    .locals 6

    .prologue
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lⁱʾ/ˑﹳ;->ⁱˊ:Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    iget v2, p0, Lⁱʾ/ˑﹳ;->ˉˆ:I

    const/16 v3, 0x21

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v5, 0x2

    invoke-direct {v2, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget v5, p0, Lⁱʾ/ˑﹳ;->ˉˆ:I

    invoke-virtual {v0, v2, v5, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    iget v2, p0, Lⁱʾ/ˑﹳ;->ʼᐧ:I

    if-eq v2, v4, :cond_1

    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    iget v5, p0, Lⁱʾ/ˑﹳ;->ʼᐧ:I

    invoke-virtual {v0, v2, v5, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    iget v2, p0, Lⁱʾ/ˑﹳ;->ᵔﹳ:I

    if-eq v2, v4, :cond_2

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget v5, p0, Lⁱʾ/ˑﹳ;->ﹳᐧ:I

    invoke-direct {v2, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v5, p0, Lⁱʾ/ˑﹳ;->ᵔﹳ:I

    invoke-virtual {v0, v2, v5, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    iget v2, p0, Lⁱʾ/ˑﹳ;->יـ:I

    if-eq v2, v4, :cond_3

    new-instance v2, Landroid/text/style/BackgroundColorSpan;

    iget v4, p0, Lⁱʾ/ˑﹳ;->ˏי:I

    invoke-direct {v2, v4}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iget v4, p0, Lⁱʾ/ˑﹳ;->יـ:I

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_3
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v1
.end method

.method public final ﹳٴ(C)V
    .locals 3

    .prologue
    const/16 v0, 0xa

    iget-object v1, p0, Lⁱʾ/ˑﹳ;->ⁱˊ:Landroid/text/SpannableStringBuilder;

    if-ne p1, v0, :cond_6

    invoke-virtual {p0}, Lⁱʾ/ˑﹳ;->ⁱˊ()Landroid/text/SpannableString;

    move-result-object p1

    iget-object v0, p0, Lⁱʾ/ˑﹳ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    iget p1, p0, Lⁱʾ/ˑﹳ;->ˉˆ:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_0

    iput v2, p0, Lⁱʾ/ˑﹳ;->ˉˆ:I

    :cond_0
    iget p1, p0, Lⁱʾ/ˑﹳ;->ʼᐧ:I

    if-eq p1, v1, :cond_1

    iput v2, p0, Lⁱʾ/ˑﹳ;->ʼᐧ:I

    :cond_1
    iget p1, p0, Lⁱʾ/ˑﹳ;->ᵔﹳ:I

    if-eq p1, v1, :cond_2

    iput v2, p0, Lⁱʾ/ˑﹳ;->ᵔﹳ:I

    :cond_2
    iget p1, p0, Lⁱʾ/ˑﹳ;->יـ:I

    if-eq p1, v1, :cond_3

    iput v2, p0, Lⁱʾ/ˑﹳ;->יـ:I

    :cond_3
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget v1, p0, Lⁱʾ/ˑﹳ;->ˆʾ:I

    if-ge p1, v1, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v1, 0xf

    if-lt p1, v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Lⁱʾ/ˑﹳ;->ʽﹳ:I

    return-void

    :cond_5
    :goto_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_6
    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    return-void
.end method

.method public final ﾞᴵ(II)V
    .locals 6

    .prologue
    iget v0, p0, Lⁱʾ/ˑﹳ;->ᵔﹳ:I

    const/16 v1, 0x21

    iget-object v2, p0, Lⁱʾ/ˑﹳ;->ⁱˊ:Landroid/text/SpannableStringBuilder;

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    iget v0, p0, Lⁱʾ/ˑﹳ;->ﹳᐧ:I

    if-eq v0, p1, :cond_0

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    iget v4, p0, Lⁱʾ/ˑﹳ;->ﹳᐧ:I

    invoke-direct {v0, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v4, p0, Lⁱʾ/ˑﹳ;->ᵔﹳ:I

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-virtual {v2, v0, v4, v5, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    sget v0, Lⁱʾ/ˑﹳ;->ʻٴ:I

    if-eq p1, v0, :cond_1

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    iput v0, p0, Lⁱʾ/ˑﹳ;->ᵔﹳ:I

    iput p1, p0, Lⁱʾ/ˑﹳ;->ﹳᐧ:I

    :cond_1
    iget p1, p0, Lⁱʾ/ˑﹳ;->יـ:I

    if-eq p1, v3, :cond_2

    iget p1, p0, Lⁱʾ/ˑﹳ;->ˏי:I

    if-eq p1, p2, :cond_2

    new-instance p1, Landroid/text/style/BackgroundColorSpan;

    iget v0, p0, Lⁱʾ/ˑﹳ;->ˏי:I

    invoke-direct {p1, v0}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iget v0, p0, Lⁱʾ/ˑﹳ;->יـ:I

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, p1, v0, v3, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    sget p1, Lⁱʾ/ˑﹳ;->ـˆ:I

    if-eq p2, p1, :cond_3

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    iput p1, p0, Lⁱʾ/ˑﹳ;->יـ:I

    iput p2, p0, Lⁱʾ/ˑﹳ;->ˏי:I

    :cond_3
    return-void
.end method
