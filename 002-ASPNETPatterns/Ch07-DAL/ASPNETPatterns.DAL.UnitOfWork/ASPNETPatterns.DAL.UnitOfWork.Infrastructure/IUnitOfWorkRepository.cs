﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ASPNETPatterns.DAL.UnitOfWork.Infrastructure
{
    public interface IUnitOfWorkRepository
    {
        void PersistCreationOf(IAggregateRoot entity);
        void PersistUpdateOf(IAggregateRoot entity);
        void PersistDeletionOf(IAggregateRoot entity);
    }
}
