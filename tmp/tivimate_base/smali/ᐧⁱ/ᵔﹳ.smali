.class public final Lᐧⁱ/ᵔﹳ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Ljava/lang/String;

.field public final ⁱˊ:I

.field public final ﹳٴ:Lʽⁱ/ʿ;


# direct methods
.method public constructor <init>(Lʽⁱ/ʿᵢ;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lʽⁱ/ʿᵢ;->ﹳٴ:Lʼʻ/ᵎⁱ;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lʽⁱ/ʿ;

    iput-object p1, p0, Lᐧⁱ/ᵔﹳ;->ﹳٴ:Lʽⁱ/ʿ;

    iput p3, p0, Lᐧⁱ/ᵔﹳ;->ⁱˊ:I

    iput-object p4, p0, Lᐧⁱ/ᵔﹳ;->ʽ:Ljava/lang/String;

    return-void
.end method
