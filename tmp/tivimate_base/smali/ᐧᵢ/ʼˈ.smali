.class public final Lᐧᵢ/ʼˈ;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final ⁱˊ:Ljava/lang/Object;

.field public final ﹳٴ:Lˎᵢ/ʽʽ;


# direct methods
.method public constructor <init>(Lˎᵢ/ʽʽ;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᐧᵢ/ʼˈ;->ﹳٴ:Lˎᵢ/ʽʽ;

    iput-object p2, p0, Lᐧᵢ/ʼˈ;->ⁱˊ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lᐧᵢ/ʼˈ;->ﹳٴ:Lˎᵢ/ʽʽ;

    invoke-virtual {v0}, Lˎᵢ/ʽʽ;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
