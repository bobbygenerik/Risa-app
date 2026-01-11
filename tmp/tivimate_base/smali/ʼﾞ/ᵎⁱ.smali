.class public abstract Lʼﾞ/ᵎⁱ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Ljava/lang/Object;

.field public final ⁱˊ:Ljava/lang/Object;

.field public ﹳٴ:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lʼﾞ/ᵎⁱ;->ﹳٴ:I

    iput-object p2, p0, Lʼﾞ/ᵎⁱ;->ⁱˊ:Ljava/lang/Object;

    iput-object p3, p0, Lʼﾞ/ᵎⁱ;->ʽ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lˋˋ/ʻᵎ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Lʼﾞ/ᵎⁱ;->ﹳٴ:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lʼﾞ/ᵎⁱ;->ʽ:Ljava/lang/Object;

    iput-object p1, p0, Lʼﾞ/ᵎⁱ;->ⁱˊ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lـﹶ/ʼˎ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lʼﾞ/ᵎⁱ;->ﹳٴ:I

    new-instance v0, Lـﹶ/ˈ;

    invoke-direct {v0}, Lـﹶ/ˈ;-><init>()V

    iput-object v0, p0, Lʼﾞ/ᵎⁱ;->ʽ:Ljava/lang/Object;

    iput-object p1, p0, Lʼﾞ/ᵎⁱ;->ⁱˊ:Ljava/lang/Object;

    return-void
.end method

.method public static ⁱˊ(Lˋˋ/ʻᵎ;I)Lʼﾞ/ᵎⁱ;
    .locals 1

    .prologue
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    new-instance p1, Lˋˋ/ˋᵔ;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lˋˋ/ˋᵔ;-><init>(Lˋˋ/ʻᵎ;I)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid orientation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p1, Lˋˋ/ˋᵔ;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lˋˋ/ˋᵔ;-><init>(Lˋˋ/ʻᵎ;I)V

    return-object p1
.end method


# virtual methods
.method public abstract ʻٴ(Lﹳᴵ/ﹳٴ;)Lʼﾞ/ˉٴ;
.end method

.method public abstract ʼˎ()I
.end method

.method public abstract ʼᐧ(Landroid/view/View;)I
.end method

.method public abstract ʽ(Lﹳᴵ/ﹳٴ;)V
.end method

.method public abstract ʽﹳ(Lﹳᴵ/ﹳٴ;)V
.end method

.method public abstract ˆʾ()I
.end method

.method public abstract ˈ(Landroid/view/View;)I
.end method

.method public abstract ˉʿ()I
.end method

.method public abstract ˉˆ(Landroid/view/View;)I
.end method

.method public abstract ˏי(Lﹳᴵ/ﹳٴ;)V
.end method

.method public abstract ˑﹳ(Landroid/view/View;)I
.end method

.method public abstract יـ(Lﹳᴵ/ﹳٴ;)V
.end method

.method public abstract ٴﹶ()I
.end method

.method public abstract ᵎﹶ(Landroid/view/View;)I
.end method

.method public abstract ᵔʾ()I
.end method

.method public abstract ᵔᵢ()I
.end method

.method public abstract ᵔﹳ(I)V
.end method

.method public abstract ﹳٴ(Lﹳᴵ/ﹳٴ;)V
.end method

.method public abstract ﹳᐧ()V
.end method

.method public abstract ﾞʻ()I
.end method

.method public abstract ﾞᴵ(Landroid/view/View;)I
.end method
