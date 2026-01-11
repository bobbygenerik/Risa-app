.class public final synthetic Lˎᵢ/ʼˎ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᴵⁱ/ᵔﹳ;


# instance fields
.field public final synthetic ʽʽ:I

.field public final synthetic ʾˋ:Lﾞʿ/ʽ;

.field public final synthetic ˈٴ:I

.field public final synthetic ˉٴ:Lˉˆ/ʿ;

.field public final synthetic ˊʻ:Z

.field public final synthetic ٴᵢ:Z

.field public final synthetic ᴵˊ:I

.field public final synthetic ᴵᵔ:I


# direct methods
.method public synthetic constructor <init>(Lﾞʿ/ʽ;IIIIZZLˉˆ/ʿ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˎᵢ/ʼˎ;->ʾˋ:Lﾞʿ/ʽ;

    iput p2, p0, Lˎᵢ/ʼˎ;->ᴵˊ:I

    iput p3, p0, Lˎᵢ/ʼˎ;->ʽʽ:I

    iput p4, p0, Lˎᵢ/ʼˎ;->ˈٴ:I

    iput p5, p0, Lˎᵢ/ʼˎ;->ᴵᵔ:I

    iput-boolean p6, p0, Lˎᵢ/ʼˎ;->ˊʻ:Z

    iput-boolean p7, p0, Lˎᵢ/ʼˎ;->ٴᵢ:Z

    iput-object p8, p0, Lˎᵢ/ʼˎ;->ˉٴ:Lˉˆ/ʿ;

    return-void
.end method


# virtual methods
.method public final ᵎﹶ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    move-object v2, p1

    check-cast v2, Lٴᵎ/יـ;

    move-object v9, p2

    check-cast v9, Lˎᵢ/ﹳٴ;

    move-object v11, p3

    check-cast v11, Lٴᵎ/ﹳٴ;

    new-instance p1, Lـᵢ/ˆʾ;

    new-instance p2, Lٴᵎ/ﾞʻ;

    new-instance v0, Lٴᵎ/ˏי;

    iget-object v1, p0, Lˎᵢ/ʼˎ;->ʾˋ:Lﾞʿ/ʽ;

    iget v3, p0, Lˎᵢ/ʼˎ;->ᴵˊ:I

    iget v4, p0, Lˎᵢ/ʼˎ;->ʽʽ:I

    iget v5, p0, Lˎᵢ/ʼˎ;->ˈٴ:I

    iget v6, p0, Lˎᵢ/ʼˎ;->ᴵᵔ:I

    iget-boolean v7, p0, Lˎᵢ/ʼˎ;->ˊʻ:Z

    iget-boolean v8, p0, Lˎᵢ/ʼˎ;->ٴᵢ:Z

    iget-object v10, p0, Lˎᵢ/ʼˎ;->ˉٴ:Lˉˆ/ʿ;

    invoke-direct/range {v0 .. v11}, Lٴᵎ/ˏי;-><init>(Lﾞʿ/ʽ;Lٴᵎ/יـ;IIIIZZLˎᵢ/ﹳٴ;Lˉˆ/ʿ;Lٴᵎ/ﹳٴ;)V

    invoke-direct {p2, v0}, Lٴᵎ/ﾞʻ;-><init>(Lٴᵎ/ˏי;)V

    invoke-direct {p1, p2, v1}, Lـᵢ/ˆʾ;-><init>(Lٴᵎ/ʾᵎ;Lﾞʿ/ʽ;)V

    return-object p1
.end method
