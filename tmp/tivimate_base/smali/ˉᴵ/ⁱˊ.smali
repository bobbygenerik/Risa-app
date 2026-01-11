.class public final Lˉᴵ/ⁱˊ;
.super Lᴵʾ/ʽ;
.source "SourceFile"


# instance fields
.field public ˈٴ:Ljava/util/Map;

.field public ˉٴ:Ljava/util/Map;

.field public ˊʻ:Lˉᴵ/ˈ;

.field public synthetic ٴʼ:Ljava/lang/Object;

.field public ٴᵢ:Lﹶי/ʽ;

.field public ᴵᵔ:Ljava/util/Iterator;

.field public final synthetic ᵎˊ:Lˉᴵ/ʽ;

.field public ᵎⁱ:Ljava/lang/Object;

.field public ᵔי:I


# direct methods
.method public constructor <init>(Lˉᴵ/ʽ;Lᴵʾ/ʽ;)V
    .locals 0

    iput-object p1, p0, Lˉᴵ/ⁱˊ;->ᵎˊ:Lˉᴵ/ʽ;

    invoke-direct {p0, p2}, Lᴵʾ/ʽ;-><init>(Lˈי/ˈ;)V

    return-void
.end method


# virtual methods
.method public final ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lˉᴵ/ⁱˊ;->ٴʼ:Ljava/lang/Object;

    iget p1, p0, Lˉᴵ/ⁱˊ;->ᵔי:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lˉᴵ/ⁱˊ;->ᵔי:I

    iget-object p1, p0, Lˉᴵ/ⁱˊ;->ᵎˊ:Lˉᴵ/ʽ;

    invoke-virtual {p1, p0}, Lˉᴵ/ʽ;->ⁱˊ(Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
