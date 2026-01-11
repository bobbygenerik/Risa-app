.class public abstract Lﹶـ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile ⁱˊ:[Lᐧﹳ/ʽ;

.field public static final ﹳٴ:Lᐧﹳ/ʽ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lᐧﹳ/ʽ;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Lᐧﹳ/ʽ;-><init>(I)V

    sput-object v0, Lﹶـ/ﹳٴ;->ﹳٴ:Lᐧﹳ/ʽ;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Lᐧﹳ/ʽ;

    sput-object v0, Lﹶـ/ﹳٴ;->ⁱˊ:[Lᐧﹳ/ʽ;

    return-void
.end method
