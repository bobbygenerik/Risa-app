.class public final Lⁱˉ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʼˎ:I

.field public ʼᐧ:I

.field public ʽ:Landroid/text/Layout$Alignment;

.field public ˆʾ:I

.field public ˈ:Landroid/text/Layout$Alignment;

.field public ˉʿ:F

.field public ˉˆ:I

.field public ˑﹳ:F

.field public ٴﹶ:F

.field public ᵎﹶ:I

.field public ᵔʾ:Z

.field public ᵔᵢ:F

.field public ᵔﹳ:F

.field public ⁱˊ:Landroid/graphics/Bitmap;

.field public ﹳٴ:Ljava/lang/CharSequence;

.field public ﹳᐧ:I

.field public ﾞʻ:F

.field public ﾞᴵ:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lⁱˉ/ﹳٴ;->ﹳٴ:Ljava/lang/CharSequence;

    iput-object v0, p0, Lⁱˉ/ﹳٴ;->ⁱˊ:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lⁱˉ/ﹳٴ;->ʽ:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lⁱˉ/ﹳٴ;->ˈ:Landroid/text/Layout$Alignment;

    const v0, -0x800001

    iput v0, p0, Lⁱˉ/ﹳٴ;->ˑﹳ:F

    const/high16 v1, -0x80000000

    iput v1, p0, Lⁱˉ/ﹳٴ;->ﾞᴵ:I

    iput v1, p0, Lⁱˉ/ﹳٴ;->ᵎﹶ:I

    iput v0, p0, Lⁱˉ/ﹳٴ;->ᵔᵢ:F

    iput v1, p0, Lⁱˉ/ﹳٴ;->ʼˎ:I

    iput v1, p0, Lⁱˉ/ﹳٴ;->ˆʾ:I

    iput v0, p0, Lⁱˉ/ﹳٴ;->ٴﹶ:F

    iput v0, p0, Lⁱˉ/ﹳٴ;->ﾞʻ:F

    iput v0, p0, Lⁱˉ/ﹳٴ;->ˉʿ:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lⁱˉ/ﹳٴ;->ᵔʾ:Z

    const/high16 v0, -0x1000000

    iput v0, p0, Lⁱˉ/ﹳٴ;->ˉˆ:I

    iput v1, p0, Lⁱˉ/ﹳٴ;->ʼᐧ:I

    return-void
.end method


# virtual methods
.method public final ﹳٴ()Lⁱˉ/ⁱˊ;
    .locals 21

    move-object/from16 v0, p0

    new-instance v1, Lⁱˉ/ⁱˊ;

    iget-object v2, v0, Lⁱˉ/ﹳٴ;->ﹳٴ:Ljava/lang/CharSequence;

    iget-object v3, v0, Lⁱˉ/ﹳٴ;->ʽ:Landroid/text/Layout$Alignment;

    iget-object v4, v0, Lⁱˉ/ﹳٴ;->ˈ:Landroid/text/Layout$Alignment;

    iget-object v5, v0, Lⁱˉ/ﹳٴ;->ⁱˊ:Landroid/graphics/Bitmap;

    iget v6, v0, Lⁱˉ/ﹳٴ;->ˑﹳ:F

    iget v7, v0, Lⁱˉ/ﹳٴ;->ﾞᴵ:I

    iget v8, v0, Lⁱˉ/ﹳٴ;->ᵎﹶ:I

    iget v9, v0, Lⁱˉ/ﹳٴ;->ᵔᵢ:F

    iget v10, v0, Lⁱˉ/ﹳٴ;->ʼˎ:I

    iget v11, v0, Lⁱˉ/ﹳٴ;->ˆʾ:I

    iget v12, v0, Lⁱˉ/ﹳٴ;->ٴﹶ:F

    iget v13, v0, Lⁱˉ/ﹳٴ;->ﾞʻ:F

    iget v14, v0, Lⁱˉ/ﹳٴ;->ˉʿ:F

    iget-boolean v15, v0, Lⁱˉ/ﹳٴ;->ᵔʾ:Z

    move-object/from16 v16, v1

    iget v1, v0, Lⁱˉ/ﹳٴ;->ˉˆ:I

    move/from16 v17, v1

    iget v1, v0, Lⁱˉ/ﹳٴ;->ʼᐧ:I

    move/from16 v18, v1

    iget v1, v0, Lⁱˉ/ﹳٴ;->ᵔﹳ:F

    move/from16 v19, v1

    iget v1, v0, Lⁱˉ/ﹳٴ;->ﹳᐧ:I

    move/from16 v20, v19

    move/from16 v19, v1

    move-object/from16 v1, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v20

    invoke-direct/range {v1 .. v19}, Lⁱˉ/ⁱˊ;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIFI)V

    move-object/from16 v16, v1

    return-object v16
.end method
