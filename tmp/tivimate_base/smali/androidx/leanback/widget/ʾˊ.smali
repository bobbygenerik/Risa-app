.class public abstract Landroidx/leanback/widget/ʾˊ;
.super Landroid/widget/EditText;
.source "SourceFile"


# static fields
.field public static final ˊʻ:Ljava/util/regex/Pattern;

.field public static final ٴᵢ:Landroidx/leanback/widget/ʿᵢ;


# instance fields
.field public ʽʽ:Landroid/graphics/Bitmap;

.field public final ʾˋ:Ljava/util/Random;

.field public ˈٴ:I

.field public ᴵˊ:Landroid/graphics/Bitmap;

.field public ᴵᵔ:Landroid/animation/ObjectAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "\\S+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/leanback/widget/ʾˊ;->ˊʻ:Ljava/util/regex/Pattern;

    new-instance v0, Landroidx/leanback/widget/ʿᵢ;

    const-string v1, "streamPosition"

    const/4 v2, 0x3

    const-class v3, Ljava/lang/Integer;

    invoke-direct {v0, v3, v1, v2}, Landroidx/leanback/widget/ʿᵢ;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    sput-object v0, Landroidx/leanback/widget/ʾˊ;->ٴᵢ:Landroidx/leanback/widget/ʿᵢ;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f1402a8

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Landroidx/leanback/widget/ʾˊ;->ʾˋ:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method public getStreamPosition()I
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/ʾˊ;->ˈٴ:I

    return v0
.end method

.method public final onFinishInflate()V
    .locals 5

    .prologue
    invoke-super {p0}, Landroid/widget/EditText;->onFinishInflate()V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801a8

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3fa66666    # 1.3f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroidx/leanback/widget/ʾˊ;->ᴵˊ:Landroid/graphics/Bitmap;

    const v0, 0x7f0801aa

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v2, v3

    invoke-static {v0, v1, v2, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroidx/leanback/widget/ʾˊ;->ʽʽ:Landroid/graphics/Bitmap;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/leanback/widget/ʾˊ;->ˈٴ:I

    iget-object v0, p0, Landroidx/leanback/widget/ʾˊ;->ᴵᵔ:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/EditText;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string v0, "androidx.leanback.widget.StreamingTextView"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 0

    invoke-static {p1, p0}, Lﹳٴ/ﹳٴ;->ˉـ(Landroid/view/ActionMode$Callback;Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method public setStreamPosition(I)V
    .locals 0

    iput p1, p0, Landroidx/leanback/widget/ʾˊ;->ˈٴ:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
