.class public final Lᴵʼ/ˈ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʿᵢ/ᵎﹶ;


# instance fields
.field public final ﹳٴ:Lʿᵢ/ᵎﹶ;


# direct methods
.method public constructor <init>(Lʿᵢ/ᵎﹶ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᴵʼ/ˈ;->ﹳٴ:Lʿᵢ/ᵎﹶ;

    return-void
.end method


# virtual methods
.method public final ⁱˊ()Lᵎˈ/ᵎﹶ;
    .locals 1

    iget-object v0, p0, Lᴵʼ/ˈ;->ﹳٴ:Lʿᵢ/ᵎﹶ;

    invoke-interface {v0}, Lʿᵢ/ᵎﹶ;->ⁱˊ()Lᵎˈ/ᵎﹶ;

    move-result-object v0

    return-object v0
.end method

.method public final ﹳٴ(Lᴵⁱ/ʼᐧ;Lᴵʾ/ʽ;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lᴵʼ/ʽ;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lᴵʼ/ʽ;-><init>(Lᴵⁱ/ʼᐧ;Lˈי/ˈ;)V

    iget-object p1, p0, Lᴵʼ/ˈ;->ﹳٴ:Lʿᵢ/ᵎﹶ;

    invoke-interface {p1, v0, p2}, Lʿᵢ/ᵎﹶ;->ﹳٴ(Lᴵⁱ/ʼᐧ;Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
