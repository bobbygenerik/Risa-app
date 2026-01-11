.class public final Lיי/ʼᐧ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʼˎ:I

.field public ʼᐧ:J

.field public final ʽ:Z

.field public ˆʾ:J

.field public final ˈ:Landroid/util/SparseArray;

.field public ˉʿ:Lיי/ˉˆ;

.field public ˉˆ:Z

.field public final ˑﹳ:Landroid/util/SparseArray;

.field public יـ:Z

.field public ٴﹶ:Z

.field public ᵎﹶ:[B

.field public ᵔʾ:Lיי/ˉˆ;

.field public ᵔᵢ:I

.field public ᵔﹳ:J

.field public final ⁱˊ:Z

.field public final ﹳٴ:Lˊﾞ/ٴᵢ;

.field public ﹳᐧ:Z

.field public ﾞʻ:J

.field public final ﾞᴵ:Lʻᴵ/ʻٴ;


# direct methods
.method public constructor <init>(Lˊﾞ/ٴᵢ;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lיי/ʼᐧ;->ﹳٴ:Lˊﾞ/ٴᵢ;

    iput-boolean p2, p0, Lיי/ʼᐧ;->ⁱˊ:Z

    iput-boolean p3, p0, Lיי/ʼᐧ;->ʽ:Z

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lיי/ʼᐧ;->ˈ:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lיי/ʼᐧ;->ˑﹳ:Landroid/util/SparseArray;

    new-instance p1, Lיי/ˉˆ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lיי/ʼᐧ;->ˉʿ:Lיי/ˉˆ;

    new-instance p1, Lיי/ˉˆ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lיי/ʼᐧ;->ᵔʾ:Lיי/ˉˆ;

    const/16 p1, 0x80

    new-array p1, p1, [B

    iput-object p1, p0, Lיי/ʼᐧ;->ᵎﹶ:[B

    new-instance p2, Lʻᴵ/ʻٴ;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3, p3}, Lʻᴵ/ʻٴ;-><init>([BII)V

    iput-object p2, p0, Lיי/ʼᐧ;->ﾞᴵ:Lʻᴵ/ʻٴ;

    iput-boolean p3, p0, Lיי/ʼᐧ;->ٴﹶ:Z

    iput-boolean p3, p0, Lיי/ʼᐧ;->ˉˆ:Z

    iget-object p1, p0, Lיי/ʼᐧ;->ᵔʾ:Lיי/ˉˆ;

    iput-boolean p3, p1, Lיי/ˉˆ;->ⁱˊ:Z

    iput-boolean p3, p1, Lיי/ˉˆ;->ﹳٴ:Z

    return-void
.end method
