.class public final synthetic Lⁱי/ˊˋ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʽʽ:Lﹳᵢ/ﹳᐧ;

.field public final synthetic ʾˋ:Lⁱי/ـˏ;

.field public final synthetic ˈٴ:Lˎʾ/ᵎﹶ;

.field public final synthetic ᴵˊ:Landroid/util/Pair;

.field public final synthetic ᴵᵔ:I


# direct methods
.method public synthetic constructor <init>(Lⁱי/ـˏ;Landroid/util/Pair;Lﹳᵢ/ﹳᐧ;Lˎʾ/ᵎﹶ;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lⁱי/ˊˋ;->ʾˋ:Lⁱי/ـˏ;

    iput-object p2, p0, Lⁱי/ˊˋ;->ᴵˊ:Landroid/util/Pair;

    iput-object p3, p0, Lⁱי/ˊˋ;->ʽʽ:Lﹳᵢ/ﹳᐧ;

    iput-object p4, p0, Lⁱי/ˊˋ;->ˈٴ:Lˎʾ/ᵎﹶ;

    iput p5, p0, Lⁱי/ˊˋ;->ᴵᵔ:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lⁱי/ˊˋ;->ʾˋ:Lⁱי/ـˏ;

    iget-object v0, v0, Lⁱי/ـˏ;->ᴵˊ:Lˋⁱ/ʼᐧ;

    iget-object v0, v0, Lˋⁱ/ʼᐧ;->ʼˎ:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lʻʿ/ˆʾ;

    iget-object v0, p0, Lⁱי/ˊˋ;->ᴵˊ:Landroid/util/Pair;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lﹳᵢ/ᵢˏ;

    iget-object v4, p0, Lⁱי/ˊˋ;->ʽʽ:Lﹳᵢ/ﹳᐧ;

    iget-object v5, p0, Lⁱי/ˊˋ;->ˈٴ:Lˎʾ/ᵎﹶ;

    iget v6, p0, Lⁱי/ˊˋ;->ᴵᵔ:I

    invoke-virtual/range {v1 .. v6}, Lʻʿ/ˆʾ;->ˈٴ(ILﹳᵢ/ᵢˏ;Lﹳᵢ/ﹳᐧ;Lˎʾ/ᵎﹶ;I)V

    return-void
.end method
